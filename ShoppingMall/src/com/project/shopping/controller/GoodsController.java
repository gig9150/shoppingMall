package com.project.shopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;

	@GetMapping("/main")
	public String main(@RequestParam("goods_category_idx")int goods_category_idx,
						@RequestParam(value="page",defaultValue = "1")int page,
						Model model) {
		
		//카테고리 번호
		model.addAttribute("goods_category_idx",goods_category_idx);
		//카테고리 이름
		String goodsCategoryName = goodsService.getBoardInfoName(goods_category_idx);
		model.addAttribute("goodsCategoryName",goodsCategoryName);

		
		
		return "goods/main";
	}
	
}
