package com.gwc.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gwc.entity.tb_Goods;
import com.gwc.service.tbGoodsService;

@RequestMapping("tbGoodsAction")
@Controller
public class tbGoodsAction {

	@Autowired
	private tbGoodsService service;
	
	@ResponseBody
	@RequestMapping("tbGoodsSelect")
	public List<tb_Goods> tbGoodsSelect(){
		List<tb_Goods> list = service.tbGoodsSelect();
		return list;
	}

	@ResponseBody
	@RequestMapping("tbGoodsDelete")
	public void tbGoodsDelete(tb_Goods Goods){
		service.tbGoodsDelete(Goods);
	}

	@ResponseBody
	@RequestMapping("tbGoodsAdd")//上传文件
	public void tbGoodsAdd(tb_Goods Goods,@RequestParam("file1") MultipartFile file,HttpServletRequest request){
		//service.tbGoodsAdd(Goods);
		String path=request.getServletContext().getRealPath("/view/upload/");
		String fileName = file.getOriginalFilename();
		File targetFile = new File(path,fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Goods.setGoodsImageName(request.getContextPath()+"/view/upload/"+fileName);
		service.tbGoodsAdd(Goods);
	}
}
