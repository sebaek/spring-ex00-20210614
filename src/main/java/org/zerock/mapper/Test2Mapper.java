package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;

public interface Test2Mapper {

	public int sql1(@Param("t") String type);
	
	public int sql2(@Param("type") String t);
	
	public int sql3(@Param("type") String t);
	
	public int sql4(@Param("type") String t);
	
	public int sql5(@Param("type") String t);
}
