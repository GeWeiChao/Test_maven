package com.gwc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.gwc.entity.tb_Goods;

public interface tbGoodsDao {
	//查询商品
	public List<tb_Goods> tbGoodsSelect();

	@Insert("insert into tb_Goods(goodsname,goodsDesc,goodsUnitPrice,goodsImageName,sellCount,goodsDate,typeid) values(#{goodsname},#{goodsDesc},#{goodsUnitPrice},#{goodsImageName},#{sellCount},#{goodsDate},#{goodstype.typeid})")
	public void tbGoodsAdd(tb_Goods Goods);
	@Delete("delete from tb_Goods where goodsid = #{goodsid}")
	public void tbGoodsDelete(tb_Goods Goods);
}
