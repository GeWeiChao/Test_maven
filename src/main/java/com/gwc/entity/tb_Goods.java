package com.gwc.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;


/*商品表*/
public class tb_Goods {
	private int goodsid;/*商品id*/
	private String goodsname;/*商品名称*/
	/*private int typeid;*//*商品类型id*/
	private String goodsDesc;/*商品描述*/
	private double goodsUnitPrice;/*商品价格*/
	private String goodsImageName;/*商品图片路径*/ 
	private int sellCount;/*商品数量*/
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat
	private Date goodsDate;/*商品生产日期*/
	
	private tb_Goods_Type goodstype;/*商品类型表*/

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	/*public int getTypeid() {
		return typeid;
	}

	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}*/

	public String getGoodsDesc() {
		return goodsDesc;
	}

	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}

	public double getGoodsUnitPrice() {
		return goodsUnitPrice;
	}

	public void setGoodsUnitPrice(double goodsUnitPrice) {
		this.goodsUnitPrice = goodsUnitPrice;
	}

	public String getGoodsImageName() {
		return goodsImageName;
	}

	public void setGoodsImageName(String goodsImageName) {
		this.goodsImageName = goodsImageName;
	}

	public int getSellCount() {
		return sellCount;
	}

	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}

	public Date getGoodsDate() {
		return goodsDate;
	}

	public void setGoodsDate(Date goodsDate) {
		this.goodsDate = goodsDate;
	}

	public tb_Goods_Type getGoodstype() {
		return goodstype;
	}

	public void setGoodstype(tb_Goods_Type goodstype) {
		this.goodstype = goodstype;
	}
	
	
	
}
