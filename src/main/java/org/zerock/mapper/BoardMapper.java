package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardMapper {

//	@Select("SELECT * FROM tbl_board")
	public List<BoardVO> getList();
}
