package com.dyung.kim.service;

import java.io.UnsupportedEncodingException;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dyung.kim.vo.accountVO;

@Service
public class AccountService {
	
	/*
	 * @Autowired private JavaMailSender mailSender;
	 */
	
	@Autowired
	private com.dyung.kim.dao.AccountDAO dao;
	
	@Autowired
	private HttpSession session;
	
	public String accountInsert(accountVO account){
		int cnt = dao.accountInsert(account);
		if (cnt == 0) {
			return "redirect:account/joinForm";
		}
		else return "redirect:/";	
	}

	public String accountOne(accountVO account) {
		accountVO loginAccount = dao.accountOne(account.getAcc_id());
		
		String page="";
		
		if(loginAccount != null && loginAccount.getAcc_pw().equals(account.getAcc_pw())) {
			session.setAttribute("loginNick", loginAccount.getAcc_name());
			session.setAttribute("loginID", loginAccount.getAcc_id());
			page="redirect:/";
		} else {
			page="redirect:/";
		}
		return page;
	}
	
	public accountVO myInformation(String acc_id) {
		return dao.accountOne(acc_id);		
	}
	
	public String accountUpdate(accountVO account) {
		int cnt = dao.accountUpdate(account);
		
		if (cnt == 0 ) {
			System.out.println("업데이트 실패");
		}else {
			System.out.println("업데이트 성공");
		}

		return "redirect:/account/accountJoin";
	}

	public boolean idCheck(String acc_id) {
	      accountVO account = dao.accountOne(acc_id);
	      boolean data;
	      
	      System.out.println(acc_id);
	      System.out.println(account);
	      
	      if(account != null) {
	         data = false;
	      }else {data = true;}
	      
	         System.out.println(data);
	         return data;
	   }

}
	
