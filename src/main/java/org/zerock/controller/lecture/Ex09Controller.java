package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex09/*")
@Log4j
public class Ex09Controller {

	// http://localhost:8080/controller/ex09/sub01
	@RequestMapping("/sub01")
	public String method01() {
		log.info("ex09, sub01 method");
		
		return ("redirect:sub02"); // 상대경로
//		return ("redirect:/ex09/sub02"); // 절대경로
	}

	@RequestMapping("/sub02")
	public void method02() {
		log.info("ex09, sub02 method");
		

	}
}









