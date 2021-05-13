package com.project.shopping.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.shopping.beans.UserBean;
import com.project.shopping.service.OrdersService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private OrdersService ordersService;

	@GetMapping("/profile")
	public String profile() {
		return "account/profile";
	}
	
	@GetMapping("/all_orders")
	public String allOrders(Model model) {
		List<HashMap<Object, Object>> ordersList = ordersService.getOrdersList(loginUserBean.getUser_idx());
		model.addAttribute("ordersList",ordersList);
		return "account/all_orders";
	}
	
	@GetMapping("/single_order")
	public String singleOrder() {
		return "account/single_order";
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
