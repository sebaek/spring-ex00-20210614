package org.zerock.controller.lecture.upload;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/upload")
@Log4j
public class Ex01UploadController {
	
	@RequestMapping("/sub01")
	public void method1(String fname, @RequestParam("ufile") MultipartFile file) {
		log.info(fname);
		log.info(file.getOriginalFilename());
	}
}
