package com.project.shopping.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.OrdersUserBean;
import com.project.shopping.beans.UserBean;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/checkout-one")
	public String checkoutOne(@RequestParam("totalPrice") int totalPrice,
								Model model){
		//상품 가격 토탈
		model.addAttribute("totalPrice",totalPrice);
		//회원정보
		model.addAttribute("loginUserBean",loginUserBean); 
		return "orders/checkout-one";
	}
	
	@PostMapping("/checkout-two")
	public String checkoutTwo(@ModelAttribute OrdersUserBean ordersUserBean){
		return "orders/checkout-two";
	}
	
	@GetMapping("/checkout-three")
	public String checkoutThree(){
		return "orders/checkout-three";
	}
	
	@GetMapping("/checkout-four")
	public String checkoutFour(){
		return "orders/checkout-four";
	}
}
