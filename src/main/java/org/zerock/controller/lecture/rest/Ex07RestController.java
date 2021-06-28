package org.zerock.controller.lecture.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/rest07")
@Log4j
public class Ex07RestController {
	
	@RequestMapping("/sub01")
	public String method01(String name, int age) {
		log.info("rest07 sub01 method...");
		
		return "method1 : " + name + ", " + age;
	}
}








