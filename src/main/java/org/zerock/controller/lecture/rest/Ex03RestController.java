package org.zerock.controller.lecture.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

import lombok.Setter;

@RestController
@RequestMapping("/rest03")
public class Ex03RestController {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@GetMapping("/sub01")
	public BoardVO method01(Long bno) {
		BoardVO vo = service.get(bno);
		
		return vo;
	}
}







