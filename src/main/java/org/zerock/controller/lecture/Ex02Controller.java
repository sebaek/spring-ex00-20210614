package org.zerock.controller.lecture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex02/*")
@Log4j
public class Ex02Controller {	
	
	@RequestMapping("/sub01")
	public void method01(HttpServletRequest request) {
		log.info("ex02, sub01 method");
		log.info(request);
	}
	
	@RequestMapping("/sub02")
	public void method02(HttpServletRequest req) {
		log.info("ex02 sub02 method");
		log.info(req.getParameter("id"));
		log.info(req.getParameter("age"));
		
		String idparam = req.getParameter("id");
		log.info(idparam);
	}
	
	@RequestMapping("/sub03")
	public void method03(@RequestParam("id") String idparam) {
		log.info("ex02 sub03 method");
		log.info(idparam);
	}
	
	@RequestMapping("/sub04")
	public void method04(@RequestParam("id") String idParam,
			@RequestParam("age") String ageParam) {
		
		log.info("ex02 sub04 method");
		log.info(idParam);
		log.info(ageParam);
	}
}












