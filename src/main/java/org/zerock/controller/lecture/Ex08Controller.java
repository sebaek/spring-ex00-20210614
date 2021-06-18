package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.controller.lecture.domain.User;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex08/*")
@Log4j
public class Ex08Controller {
	
	@RequestMapping("/sub01")
	public void method01(Model model) {
		log.info("ex08, sub01 method");
		
		model.addAttribute("name", "donald");
		model.addAttribute("age", 22);
	}
	
	@RequestMapping("/sub02")
	public void method02(Model model) {
		log.info("ex08, sub02 method");
		
		User user = new User();
		user.setId("bts");
		user.setAge(22);
		
		model.addAttribute("user", user);
	}
	
	
	@RequestMapping("/sub03")
	public String method03(Model model) {
		log.info("ex08, sub03 method");
		
		User user = new User();
		user.setId("korea");
		user.setAge(5000);
		
//		model.addAttribute("user", user);
		model.addAttribute(user);
		
		return "ex08/sub02";
	}
}














