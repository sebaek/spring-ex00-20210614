package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex03/*")
@Log4j
public class Ex03Controller {
	
	@RequestMapping("/sub01")
	public void method01() {
		log.info("ex03, sub01 method");
	}
}
