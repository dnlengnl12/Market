package com.dyung.kim.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.ItemDAO;
import com.dyung.kim.dao.ItemMapper;
import com.dyung.kim.vo.ComVO;
import com.dyung.kim.vo.FileVO;
import com.dyung.kim.vo.ItemVO;

@Service
public class ItemService {

	@Autowired
	private ItemDAO dao;
	
	@Autowired
	private HttpSession session;
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

	public ArrayList<HashMap<Object, Object>> selectItemAll(String item_option, int startRecord,int countPerPage) {
		System.out.println("service : "+item_option);
		ArrayList<HashMap<Object, Object>> map = dao.selectItemAll(item_option, startRecord,countPerPage);
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
	
	public HashMap<Object, Object> selectItem(int item_num){
		HashMap<Object, Object> item = dao.selectItem(item_num);
		return item;
	}
	
	public FileVO nextIndex(HashMap<Object, Object> map) {
		FileVO file = dao.nextIndex(map);
		return file;
	}
	
	public ArrayList<HashMap<Object, Object>> selectMyitem(int startRecord, int countPerPage, String acc_id){
		ArrayList<HashMap<Object, Object>> Myboard = dao.selectMyitem(startRecord, countPerPage, acc_id);
		return Myboard;
	}
	
	public void logout() {
	      session.removeAttribute("loginID");
	}
	
	public int commentInsert(ComVO comment) {
		int cnt = dao.commentInsert(comment);
		return cnt;
	}
	
	public ArrayList<ComVO> commentSelect(int item_num) {
		ArrayList<ComVO> list = dao.commentSelect(item_num);
		return list;
	}
	
	public ComVO commentSelectOne(int comment_no) {
		ComVO com = dao.commentSelectOne(comment_no);
		return com;
	}
}
