package com.gwc.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gwc.entity.tb_Goods_Type;
import com.gwc.service.tbGoodsTypeService;

@RequestMapping("tbGoodsTypeAction")
@Controller
public class tbGoodsTypeAction {

	@Autowired
	private tbGoodsTypeService service;
	
	@ResponseBody
	@RequestMapping("tbGoodsTypeSelect")
	public List<tb_Goods_Type> tbGoodsTypeSelect(){
		List<tb_Goods_Type> list = service.tbGoodsTypeSelect();
		return list;
	}
}
