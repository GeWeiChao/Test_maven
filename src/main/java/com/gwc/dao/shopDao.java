package com.gwc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.gwc.entity.shop;

/**
*@className   shopDao.java
*@author   葛伟超
*@time   2018年9月19日-下午2:55:09
*/
public interface shopDao {
	@Insert("insert into shop(name) values(#{name})")
	public void add(shop s);
	@Select("select * from shop")
	public List<shop> select();
}
