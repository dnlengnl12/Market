package com.dyung.kim.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.FileVO;

@Repository
public class FileDAO {

	@Autowired
	private SqlSession session;

	public int fileInsert(FileVO file) {
		int cnt=0;
		FileMapper mapper = session.getMapper(FileMapper.class);
		
		try {
			cnt = mapper.fileInsert(file);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	

}
