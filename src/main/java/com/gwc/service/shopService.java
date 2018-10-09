package com.gwc.service;

import java.util.List;

import com.gwc.entity.shop;

/**
*@className   shopService.java
*@author   葛伟超
*@time   2018年9月19日-下午2:58:47
*/
public interface shopService {

	public void add(shop s);
	
	public List<shop> select();
}
