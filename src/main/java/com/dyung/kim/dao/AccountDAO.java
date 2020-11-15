package com.dyung.kim.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.accountVO;

@Repository
public class AccountDAO {
	
	@Autowired
	private SqlSession session;

	public int accountInsert(accountVO account) {
		AccountMapper mapper = session.getMapper(AccountMapper.class);
		int result = 0;
		
		try {
			result = mapper.accountInsert(account);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public accountVO accountOne(String acc_id) {
		accountVO account = null;
		AccountMapper mapper = session.getMapper(AccountMapper.class);

		try {
			account = mapper.accountOne(acc_id);
		} catch(Exception e) {
			e.printStackTrace();
		}		
	//	System.out.println("account에서 뭘 받아오는 지 봅시다 ㅇㅅㅇ: " + account);
		
		return account;
	}
	
	public int accountUpdate(accountVO account) {
		AccountMapper mapper = session.getMapper(AccountMapper.class);
		int cnt = 0;
		
		try {
			cnt = mapper.accountUpdate(account);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(cnt);
		return cnt;
	}
	
}
