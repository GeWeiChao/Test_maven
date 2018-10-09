package com.gwc.service;

import java.util.List;

import com.gwc.entity.tb_Goods;

public interface tbGoodsService {
	public List<tb_Goods> tbGoodsSelect();
	public void tbGoodsAdd(tb_Goods Goods);
	public void tbGoodsDelete(tb_Goods Goods);
}
