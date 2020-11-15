package com.dyung.kim;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dyung.kim.service.AccountService;
import com.dyung.kim.vo.accountVO;

@Controller
@RequestMapping(value="/account")
public class AccountController {
	@Autowired
	private AccountService ac;
	
	@Autowired
	HttpSession session;
	
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
	@RequestMapping(value="/accountJoin", method = RequestMethod.GET)
	public String accountJoin(Model model) {
		String acc_id = (String)session.getAttribute("loginID");
		model.addAttribute("list",ac.myInformation(acc_id));
		
		return "acc/accountJoin";
	}
	@RequestMapping(value="/accUpdateForm", method =RequestMethod.GET)
	public String accUpdateForm(String acc_id, Model model) {
		model.addAttribute("list", ac.myInformation(acc_id));
		return "acc/accUpdateForm";
	}
	@RequestMapping(value="/accountUpdate", method =RequestMethod.POST)
	public String accontUpdate(accountVO account) {
		return ac.accountUpdate(account);
	}
	
	@ResponseBody
    @RequestMapping(value="/idCheck", method=RequestMethod.POST)
    public boolean idCheck(String acc_id) {
       
       return ac.idCheck(acc_id);
    }

}
