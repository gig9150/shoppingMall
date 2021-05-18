package com.project.shopping.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.shopping.beans.UserBean;
import com.project.shopping.service.GoodsService;

@Controller
public class HomeController {
	
	@Autowired
	private GoodsService goodsService;
	
	@GetMapping("/")
	public String home(Model model) {
		List<HashMap<Object,Object>> bestGoodsList = goodsService.getMainGoodsBestList();
		List<HashMap<Object,Object>> neweGoodsList = goodsService.getMainGoodsNeweList();
		model.addAttribute("bestGoodsList",bestGoodsList);
		model.addAttribute("neweGoodsList",neweGoodsList);
		return "main";
	}
}
