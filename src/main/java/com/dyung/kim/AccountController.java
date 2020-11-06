package com.dyung.kim;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dyung.kim.service.AccountService;
import com.dyung.kim.vo.accountVO;

import lombok.Data;

@Controller
@RequestMapping(value="/account")
public class AccountController {
	@Autowired
	private AccountService ac;
	
	@RequestMapping(value="/joinForm", method=RequestMethod.GET)
	public String joinForm() {
		return "acc/joinForm";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(accountVO account) {
		return ac.accountInsert(account);
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(accountVO account) {
		return ac.accountOne(account);
	}
	

}
