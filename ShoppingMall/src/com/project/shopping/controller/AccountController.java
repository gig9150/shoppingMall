package com.project.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController {

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
	public String cartPage() {
		return "account/cartpage";
	}
	
}
