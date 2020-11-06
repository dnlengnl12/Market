package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import com.dyung.kim.vo.ItemVO;

public interface ItemMapper {

	public int itemInsert(ItemVO item);
	public ArrayList<HashMap<Object, Object>> selectItemAll(RowBounds rb);
	public ArrayList<HashMap<Object, Object>> selectItemMain();
	public int countBoard();
}
