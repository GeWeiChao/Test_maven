package com.gwc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gwc.dao.shopDao;
import com.gwc.entity.shop;

/**
*@className   shopServiceImpl.java
*@author   葛伟超
*@time   2018年9月19日-下午2:59:36
*/
@Service
public class shopServiceImpl implements shopService {
	@Autowired
	private shopDao dao;
	
	@Override
	public void add(shop s) {
		// TODO Auto-generated method stub
		dao.add(s);
	}

	@Override
	public List<shop> select() {
		// TODO Auto-generated method stub
		return dao.select();
	}

}
