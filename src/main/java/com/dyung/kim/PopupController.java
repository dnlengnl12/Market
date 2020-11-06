package com.dyung.kim;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/popup")
public class PopupController {

	@RequestMapping(value="/jusoPopup", method=RequestMethod.GET)
	public String jusoPopup() {
		
		return "/popup/jusoPopup";
	}
}
