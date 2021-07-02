package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.mapper.TxTest1Mapper;

import lombok.Setter;

@Service
public class TxTest1Service {

	@Setter (onMethod_ = @Autowired)
	private TxTest1Mapper mapper;
	
	public void insert(String name) {
		mapper.insert(name);
		mapper.insert(name + name);
	}
}









