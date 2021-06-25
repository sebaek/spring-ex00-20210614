package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;

public interface Test2Mapper {

	public int sql1(@Param("t") String type);
	
	public int sql2(@Param("type") String t);
}
