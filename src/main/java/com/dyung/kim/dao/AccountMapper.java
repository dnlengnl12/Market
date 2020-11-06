package com.dyung.kim.dao;

import com.dyung.kim.vo.accountVO;

public interface AccountMapper {
	
	// 회원가입 인설트
	public int accountInsert(accountVO account);
	public accountVO accountOne(String acc_id);
}
