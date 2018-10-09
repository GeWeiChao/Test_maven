package com.gwc.entity;
/*商品类型表*/
public class tb_Goods_Type {
	private int typeid;/*类型Id*/
	private String typename;/*类型名称*/
	
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	@Override
	public String toString() {
		return "GoodsType [typeid=" + typeid + ", typename=" + typename + "]";
	}
	
}
