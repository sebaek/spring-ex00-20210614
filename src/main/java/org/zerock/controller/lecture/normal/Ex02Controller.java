package org.zerock.controller.lecture.normal;

import java.util.List;

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
	
	@RequestMapping("/sub05")
	public void method05(@RequestParam String id, 
			@RequestParam String age) {
//		String id = request.getParameter("id");
//		String age = request.getParameter("age");
		
		log.info("ex02 sub05 method");
		log.info(id);
		log.info(age);
	}
	
	
	@RequestMapping("/sub06")
	public void method06(@RequestParam int age) {
//		int age = Integer.parseInt(request.getParameter("age"));
		
		log.info("ex02 sub06 method");
		log.info(age);
	}
	
	@RequestMapping("/sub07")
	public void method07(@RequestParam String[] fav) {
		log.info("ex02 sub07 method");
		
		for (String f : fav) {
			log.info(f);
		}
	}
	
	@RequestMapping("/sub08")
	public void method08(@RequestParam List<String> fav) {
		log.info("ex02 sub08 method");
		
		log.info(fav);
	}
}















