package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	// http://localhost:8080/controller/ex08/sub04?id=seoul&age=2000
	@RequestMapping("/sub04")
	public String method04(User user, Model model) {
		log.info("ex08, sub04 method");

		model.addAttribute("user", user);

		return "ex08/sub02";
	}

	// http://localhost:8080/controller/ex08/sub05?id=jeju&age=9000
	@RequestMapping("/sub05")
	public String method05(@ModelAttribute("user") User user, Model model) {
		log.info("ex08, sub05 method");

		return "ex08/sub02";
	}

	// http://localhost:8080/controller/ex08/sub06?id=busan&age=8000
	@RequestMapping("/sub06")
	public String method06(@ModelAttribute User user, Model model) {
		log.info("ex08, sub06 method");

		return "ex08/sub02";
	}
	
	// http://localhost:8080/controller/ex08/sub07?id=usa&age=3000
	@RequestMapping("/sub07")
	public String method07(User user, Model model) {
		log.info("ex08, sub07 method");

		model.addAttribute("hello world");
		return "ex08/sub02";
	}

}



















