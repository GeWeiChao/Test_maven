package com.gwc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gwc.dao.tbGoodsDao;
import com.gwc.entity.tb_Goods;

@Service
public class tbGoodsServiceImpl implements tbGoodsService {
	@Autowired
	private tbGoodsDao dao;
	
	@Override
	public List<tb_Goods> tbGoodsSelect() {
		// TODO Auto-generated method stub
		return dao.tbGoodsSelect();
	}

	@Override
	public void tbGoodsAdd(tb_Goods Goods) {
		// TODO Auto-generated method stub
		dao.tbGoodsAdd(Goods);
	}

	@Override
	public void tbGoodsDelete(tb_Goods Goods) {
		// TODO Auto-generated method stub
		dao.tbGoodsDelete(Goods);
	}
}
