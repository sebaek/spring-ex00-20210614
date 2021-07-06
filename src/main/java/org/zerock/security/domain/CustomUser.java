package org.zerock.security.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.zerock.domain.MemberVO;

public class CustomUser extends User {

	public CustomUser(MemberVO vo) {
		
	}

}
