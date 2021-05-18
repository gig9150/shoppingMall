package com.project.shopping.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.UserBean;
import com.project.shopping.service.AccountService;
import com.project.shopping.service.OrdersService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/all_orders")
	public String allOrders(Model model) {
		
		List<HashMap<Object, Object>> ordersList = ordersService.getOrdersList(loginUserBean.getUser_idx());
		model.addAttribute("ordersList",ordersList);
		
		return "account/all_orders";
	}
	
	@GetMapping("/single_order")
	public String singleOrder(@RequestParam int ordersIdx,
								Model model) {
		HashMap<Object,Object> ordersDetailMap = ordersService.getOrderDetail(ordersIdx);
		//주문 상세 페이지에 필요한 정보들 담기 
		model.addAttribute("ordersDetailMap", ordersDetailMap);
		model.addAttribute("ordersIdx",ordersIdx);
		model.addAttribute("user_name",loginUserBean.getUser_name());
		
		return "account/single_order";
	}
	
	//주문취소
	@GetMapping("/cancle_order")
	public String cancleOrder(@RequestParam int ordersIdx,
							@RequestParam String orders_date,
							@RequestParam int orders_quantity,
							@RequestParam String goods_price,
							@RequestParam int goods_idx,
							Model model) {
		
		model.addAttribute("orders_date",orders_date);
		model.addAttribute("orders_quantity",orders_quantity);
		model.addAttribute("goods_price",goods_price);
		model.addAttribute("ordersIdx",ordersIdx);
		model.addAttribute("goods_idx",goods_idx);
		return "account/cancle_order";
	}
	
	@GetMapping("/cancle_order_pro")
	public String cancleOrderPro(@RequestParam int ordersIdx,
								@RequestParam int goodsIdx,
								@RequestParam int quantity) {
		
		// 판매량 수정
		ordersService.subUpdateGoodsSell(quantity,goodsIdx);
		//재고 수정 
		String goodsSizeName = ordersService.getOrdersSize(ordersIdx);
		ordersService.subUpdateGoodsStock(quantity, goodsIdx, goodsSizeName);
		//주문 목록 취소
		ordersService.deleteOrders(ordersIdx);
		
		return "account/cancle_order_success";
	}
	
	@GetMapping("/wishlist")
	public String wishList(Model model) {
		List<HashMap<Object, Object>> wishList = accountService.getWishlist(loginUserBean.getUser_idx());
		model.addAttribute("wishList",wishList);
		return "account/wishlist";
	}
	
	@GetMapping("/cartpage")
	public String cartPage(Model model) {
		model.addAttribute("user_id",loginUserBean.getUser_id());
		return "account/cartpage";
	}
	
	@GetMapping("/review")
	public String review(@RequestParam int ordersIdx,
						Model model) {
		HashMap<Object,Object> orderDetailMap = ordersService.getOrderDetail(ordersIdx);
		model.addAttribute("orderDetailMap",orderDetailMap);
		model.addAttribute("ordersIdx",ordersIdx);
		return "account/review";
	}
	
	@PostMapping("/review_pro")
	public String reviewPro(@RequestParam String review_content,
							@RequestParam int goods_idx,
							@RequestParam int orders_idx) {
		//리뷰 내용을 map 담아서 db에 저장 
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("goodsIdx", goods_idx);
		map.put("userIdx",loginUserBean.getUser_idx());
		map.put("reviewContent",review_content);
		//상품 사이즈정보
		String goodsSize = ordersService.getOrdersSize(orders_idx);
		map.put("goodsSize",goodsSize);
		accountService.addReivew(map);
		
		//리뷰가 작성되면 orders테이블에 리뷰 작성여부 컬럼 변경
		accountService.updateOrdersReview(orders_idx);
		
		return "account/review_success";
	}
	
	
}
