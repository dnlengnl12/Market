package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import com.dyung.kim.vo.CartVO;
import com.dyung.kim.vo.ComVO;
import com.dyung.kim.vo.FileVO;
import com.dyung.kim.vo.ItemVO;

public interface ItemMapper {
	public int itemInsert(ItemVO item);
	public ArrayList<HashMap<Object, Object>> selectItemAll(String item_option, RowBounds rb);
	public ArrayList<HashMap<Object, Object>> selectItemMain();
	public int countBoard();
	public HashMap<Object, Object> selectItem(int item_num);
	public FileVO nextIndex(HashMap<Object, Object> map);
	public ArrayList<HashMap<Object, Object>> selectMyitem(String acc_id, RowBounds rb);
	public int commentInsert(ComVO comment);
	public ArrayList<ComVO> commentSelect(int item_num);
	public ComVO commentSelectOne(int comment_no);
	
	public int insertCart(CartVO cart);
	public int deleteCart(int item_num);
	public ArrayList<HashMap<Object, Object>> listCart(String acc_id);
	
	public ItemVO modifyContents(int item_num); 
	public int updataeContents(ItemVO item);

}
