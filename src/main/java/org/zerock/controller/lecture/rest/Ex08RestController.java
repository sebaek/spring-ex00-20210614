package org.zerock.controller.lecture.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/rest08")
@Log4j
public class Ex08RestController {

	@RequestMapping("/sub01")
	public String method01() {
		log.info("rest08, sub01 method.....");
		
		return "hello";
	}
}
