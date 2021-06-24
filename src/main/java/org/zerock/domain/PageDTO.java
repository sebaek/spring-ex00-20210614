package org.zerock.domain;

import lombok.Getter;

@Getter
public class PageDTO {

//	private int pageNum;
//	private int amount;
	private Criteria cri;
	
	private int startPage; // 현재 페이지 기준 시작 페이지
	private int endPage; // 현재 페이지 기준 마지막 페이지
	
	private boolean prev; // '이전페이지'버튼 표시 유무
	private boolean next; // '다음페이지'버튼 표시 유무
	
	public PageDTO(Criteria cri) {
		int current = cri.getPageNum();
		int numPerPage = cri.getAmount();
		
		// 현재 페이지가 1~10 이면
		// 맨 왼쪽은 1, 맨오른쪽은 10
		this.endPage = ((current-1) / 10 + 1) * 10;
		
		// 현재 페이지가 11~20 이면
		// 맨 왼쪽은 11, 맨오른쪽은 20
		
		
	}
}







