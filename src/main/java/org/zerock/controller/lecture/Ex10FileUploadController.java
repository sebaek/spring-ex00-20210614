package org.zerock.controller.lecture;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.ObjectCannedACL;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;

@Controller
@RequestMapping("/ex1")
@Log4j
public class Ex10FileUploadController {
	
	private static String bucketName = "choongang-test-bucket1";
//	private static String key = "AKIA2LIVX7OAQWFLOPCM";
	private static S3Client s3;
	
	static {
		s3 = S3Client.builder().region(Region.AP_NORTHEAST_2).build();
	}
	
	
	@RequestMapping("/sub1")
	public void method1(@RequestParam MultipartFile[] files, Model model) throws Exception {
		for (MultipartFile file : files) {
			log.info(file.getOriginalFilename());
			
//			File des = new File(file.getOriginalFilename());
//			file.transferTo(des);
			
			PutObjectRequest objectRequest = PutObjectRequest.builder()
					.bucket(bucketName)
					.key(file.getOriginalFilename())
					.contentType(file.getContentType())
					.acl(ObjectCannedACL.PUBLIC_READ)
					.build();
			
//			s3.putObject(objectRequest, RequestBody.fromFile(des));
			s3.putObject(objectRequest, RequestBody.fromInputStream(file.getInputStream(), file.getSize()));
		}
		
		
	}
	
	
}
