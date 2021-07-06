package org.zerock.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		{"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
			"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder encoder;
	
	@Test
	public void test() {
		assertNotNull(mapper);
		
		assertNotNull(encoder);
	}

	@Test(expected = Exception.class)
	public void testInsert1() {
		MemberVO vo1 = new MemberVO();
		vo1.setUserid("member");
		vo1.setUserpw(encoder.encode("member")); // encode
		vo1.setUsername("멤버");
		
		mapper.insert(vo1);
	}
	
	@Test(expected = Exception.class)
	public void testInsert2() {
		MemberVO vo1 = new MemberVO();
		vo1.setUserid("admin");
		vo1.setUserpw(encoder.encode("admin")); // encode
		vo1.setUsername("어드민");
		
		mapper.insert(vo1);
	}
}













