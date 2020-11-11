package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.ComVO;
import com.dyung.kim.vo.FileVO;
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
	public ArrayList<HashMap<Object, Object>> selectItemAll(String item_option, int startRecord,int countPerPage) {
		ArrayList<HashMap<Object, Object>> map = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		RowBounds rb = new RowBounds(startRecord,countPerPage);
		

		
		try {
			map = mapper.selectItemAll(item_option, rb);
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
	
	public HashMap<Object, Object> selectItem(int item_num){
		HashMap<Object, Object> item = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			item = mapper.selectItem(item_num);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return item;
	}
	
	public FileVO nextIndex(HashMap<Object, Object> map) {
		FileVO file = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			file = mapper.nextIndex(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return file;
	}
	
	public ArrayList<HashMap<Object,Object >> selectMyitem(int startRecord, int countPerPage, String acc_id){
		ArrayList<HashMap<Object, Object>> Myboard = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		RowBounds rb = new RowBounds(startRecord,countPerPage);

//		HashMap<String, Object> map = new HashMap<>();
//		map.put("rb", rb);
//		map.put("acc_id", acc_id);
		try {
			Myboard = mapper.selectMyitem(acc_id, rb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Myboard;
	}
	
	public int commentInsert(ComVO comment) {
		int cnt = 0;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		
		try {
			cnt = mapper.commentInsert(comment);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	public ArrayList<ComVO> commentSelect(int item_num) {
		ArrayList<ComVO> list = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			list = mapper.commentSelect(item_num);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public ComVO commentSelectOne(int comment_no) {
		ComVO com = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			com = mapper.commentSelectOne(comment_no);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return com;
	}
}
