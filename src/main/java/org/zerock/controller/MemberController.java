package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {

	@RequestMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/signup")
	public void signup(Criteria cri) {
		
	}
	
	@PostMapping("/signup")
	public void signupPost(MemberVO vo) {
		log.info(vo);
	}
}








