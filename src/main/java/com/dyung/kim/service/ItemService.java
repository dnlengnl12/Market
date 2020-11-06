package com.dyung.kim.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.ItemDAO;
import com.dyung.kim.dao.ItemMapper;
import com.dyung.kim.vo.ItemVO;

@Service
public class ItemService {

	@Autowired
	private ItemDAO dao;
	
	public String itemInsert(ItemVO item) {
		int cnt = dao.itemInsert(item);
		String page = "";
		if(cnt == 1) {
			page = "redirect:/";
		} else {
			page = "redirect:/board/boardWriteForm";
		}
		return page;
	}

	public ArrayList<HashMap<Object, Object>> selectItemAll(int startRecord,int countPerPage) {
		ArrayList<HashMap<Object, Object>> map = dao.selectItemAll(startRecord,countPerPage);
		return map;
	}
	
	public int countBoard() {
		int count =0;
		count=dao.countBoard();
		return count;
	}
	
	public ArrayList<HashMap<Object, Object>> selectItemMain() {
		ArrayList<HashMap<Object, Object>> list = dao.selectItemMain();
		return list;
	}
}
