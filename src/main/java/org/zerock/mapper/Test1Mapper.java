package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Test1VO;

public interface Test1Mapper {
	
	public List<Test1VO> getList();
	
	public Test1VO read(long id);
	
	public int update(Test1VO vo);
	
	public int insert(Test1VO vo);
	
	public int insertSelectKey(Test1VO vo);
	
	public int delete(long id);
}





