package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex07/*")
@Log4j
public class Ex07Controller {
	
	@RequestMapping("/sub01")
	public @ResponseBody String method01() {
		log.info("ex07, sub01 method");
		
		return "my response message!!!!!!!";
		
	}
}









