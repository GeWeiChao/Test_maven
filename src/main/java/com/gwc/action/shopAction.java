package com.gwc.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gwc.entity.shop;
import com.gwc.service.shopService;

@RequestMapping("shopAction")
@Controller
public class shopAction {
	
	@Autowired
	private shopService service;
	
	@RequestMapping("add")
	public String add(shop s,Map<String,Object> map){
		service.add(s);
		map.put("add", "添加成功");
		return "success";
	}
	
	@RequestMapping("select")
	public String select(Map<String,Object> map){
		List<shop> list = service.select();
		map.put("list", list);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("json")
	public List<shop> json(){
		List<shop> list = service.select();
		return list;
	}
	
}
