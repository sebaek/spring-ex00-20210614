package org.zerock.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/replies")
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;
	
	/*
	@Autowired
	public ReplyController(ReplyService service) {
		this.service = service;
	}
	*/

	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		
		int cnt = service.register(vo);
		
		if (cnt == 1) {
			return new ResponseEntity<String> ("success", HttpStatus.OK);
		} else {
			return new ResponseEntity<String> (HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}








