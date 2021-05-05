package com.project.shopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.PageBean;
import com.project.shopping.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;

	@GetMapping("/main")
	public String main(@RequestParam("goods_category_idx")int goods_category_idx,
						@RequestParam(value="page",defaultValue = "1")int page,
						@RequestParam(value="guiest_id1",defaultValue = "0")int guiest_id1,
						Model model) {
		
		//카테고리 번호
		model.addAttribute("goods_category_idx",goods_category_idx);
		//카테고리 이름
		String goodsCategoryName = goodsService.getBoardInfoName(goods_category_idx);
		model.addAttribute("goodsCategoryName",goodsCategoryName);
		//상품 목록 뽑아오기
		List<GoodsBean> goodsList = goodsService.getGoodsList(goods_category_idx, page,guiest_id1);
		model.addAttribute("goodsList",goodsList);
		//페이징 처리에 필요한 정보들 얻어오기 (pageBean)
		PageBean pageBean =  goodsService.getGoodsCnt(goods_category_idx, page);
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page",page);
		
		
		return "goods/main";
		
	}
	
	@GetMapping("/detail")
	public String detail() {
		return "goods/detail";
	}
	
}
