package org.zerock.controller.lecture.upload;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/uploadex02")
@Log4j
public class Ex02UploadController {
	
	@RequestMapping("/sub01")
	public void method01(MultipartFile file) {
		log.info(file.getOriginalFilename());
	}
}
