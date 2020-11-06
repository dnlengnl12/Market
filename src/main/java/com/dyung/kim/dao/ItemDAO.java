package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.ItemVO;

@Repository
public class ItemDAO {

	@Autowired
	private SqlSession session;

	public int itemInsert(ItemVO item) {
		int cnt = 0;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			cnt = mapper.itemInsert(item);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	public ArrayList<HashMap<Object, Object>> selectItemAll(int startRecord,int countPerPage) {
		ArrayList<HashMap<Object, Object>> map = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		RowBounds rb = new RowBounds(startRecord,countPerPage);
		try {
			map = mapper.selectItemAll(rb);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	public int countBoard() {
		int count =0;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			count = mapper.countBoard();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public ArrayList<HashMap<Object, Object>> selectItemMain(){
		ArrayList<HashMap<Object, Object>> list = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			list = mapper.selectItemMain();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
