package com.gwc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gwc.dao.tbGoodsTypeDao;
import com.gwc.entity.tb_Goods_Type;

@Service
public class tbGoodsTypeServiceImpl implements tbGoodsTypeService {
	
	@Autowired
	private tbGoodsTypeDao dao;
	
	@Override
	public List<tb_Goods_Type> tbGoodsTypeSelect() {
		// TODO Auto-generated method stub
		return dao.tbGoodsTypeSelect();
	}

}
