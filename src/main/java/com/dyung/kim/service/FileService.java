package com.dyung.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.FileDAO;
import com.dyung.kim.vo.FileVO;

@Service
public class FileService {

	@Autowired
	private FileDAO dao;

	public int fileInsert(FileVO file) {
		return dao.fileInsert(file);
	}
}
