package com.project.shopping.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.shopping.beans.UserBean;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/profile")
	public String profile() {
		return "account/profile";
	}
	
	@GetMapping("/all_orders")
	public String allOrders() {
		return "account/all_orders";
	}
	
	@GetMapping("/wishlist")
	public String wishList() {
		return "account/wishlist";
	}
	
	@GetMapping("/cartpage")
	public String cartPage(Model model) {
		model.addAttribute("user_id",loginUserBean.getUser_id());
		return "account/cartpage";
	}
	
}
