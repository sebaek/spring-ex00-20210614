package org.zerock.controller.lecture.rest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.controller.lecture.domain.User;

//@Controller
//@ResponseBody // 모든 메소드에 붙인 것과 같음
@RestController // @Controller, @ResponseBody 조합
@RequestMapping("/rest02")
public class Ex02RestController {
	
	@RequestMapping("/sub01")
	public String method01() {
		return "response body1";
	}
	
	@RequestMapping("/sub02")
	public User method02() {
		User user = new User();
		user.setId("korea");
		user.setAge(1);
		
		return user;
	}
	
	@RequestMapping("/sub03")
	public List<String> method03() {
		List<String> list = new ArrayList<>();
		list.add("java");
		list.add("script");
		list.add("object");
		list.add("notation");
		
		return list;
		
//		return new String[] {"java", "script", "object", "notation"};
	}
	
	@RequestMapping("/sub04")
	public List<User> method04() {
		List<User> list = new ArrayList<>();
		User user = new User();
		user.setId("seoul");
		user.setAge(3);
		
		list.add(user);
		list.add(user);
		list.add(user);
		
		
		return list;
	}
}


















