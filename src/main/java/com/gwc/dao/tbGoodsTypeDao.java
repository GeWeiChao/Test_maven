package com.gwc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.gwc.entity.tb_Goods_Type;

public interface tbGoodsTypeDao {
	//查询商品类型
	@Select("select * from tb_Goods_Type")
	public List<tb_Goods_Type> tbGoodsTypeSelect();
}
