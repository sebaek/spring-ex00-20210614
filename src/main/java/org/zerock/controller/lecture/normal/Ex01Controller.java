package org.zerock.controller.lecture.normal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping("/sub02")
	public void method02() {
		log.info("ex01, sub02 method");
	}

	@RequestMapping(value = "/sub03", method = RequestMethod.GET)
	public void method03() {
		log.info("ex01, sub03 get method");
	}

	@RequestMapping(value = "/sub03", method = RequestMethod.POST)
	public void method04() {
		log.info("ex01, sub03 post method");
	}

	@GetMapping("/sub05")
	public void method05() {
		log.info("ex01, sub05 get method");
	}
	
	@PostMapping("/sub06")
	public void method06() {
		log.info("ex01, sub06 post method");
	}
}















