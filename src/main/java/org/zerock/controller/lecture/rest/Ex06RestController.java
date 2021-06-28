package org.zerock.controller.lecture.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/rest06")
@Log4j
public class Ex06RestController {
	
	@RequestMapping("/sub01")
	public String method01() {
		log.info("rest06 sub01 method...");
		return "hello";
	}
	
	@RequestMapping("/sub02")
	public String method02() {
		return "method02 response";
	}
}




