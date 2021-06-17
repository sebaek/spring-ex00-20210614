package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex01/*")
@Log4j
public class Ex01Controller {
	
	@RequestMapping("/sub01")
	public void method01() {
//		System.out.println("ex01, sub01 method");
		log.info("ex01, sub01 method");
	}
}
