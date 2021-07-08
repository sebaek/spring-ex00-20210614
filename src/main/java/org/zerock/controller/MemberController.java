package org.zerock.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	

	@RequestMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/signup")
	public void signup(Criteria cri) {
		
	}
	
	@PostMapping("/signup")
	public String signupPost(MemberVO vo, RedirectAttributes rttr) {
		log.info(vo);
		
		boolean ok = service.insert(vo);
		
		if (ok) {
			return "redirect:/board/list";
		} else {
			return "redirect:/member/signup?error";
		}
	}
	
	@GetMapping("/info")
	@PreAuthorize("isAuthenticated()")
	public void info(Criteria cri, Principal principal, Model model) {
		log.info(principal.getName());
		
		MemberVO member = service.read(principal.getName());
		
		model.addAttribute("member", member);
	}
	
	@PostMapping("/modify")
	@PreAuthorize("principal.username == #vo.userid")
	public String modify(MemberVO vo) {
		boolean ok = service.modify(vo);
		
		if (ok) {
			return "redirect:/member/info?success";
		} else {
			return "redirect:/member/info?error";
		}
	}
}
















