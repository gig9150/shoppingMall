package com.project.shopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.UserBean;
import com.project.shopping.service.GoodsService;
import com.project.shopping.service.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	private boolean checkCartGoodsExist = false;
	
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		
		//문자열로 변환하여 전달
		return userService.checkuserIdExist(user_id) + "";
	}
	
	@GetMapping("/account/goodsAddCart/{goods_idx}/{guiest_id3}/{quantity}")
	public String goodsAddCart(@PathVariable int goods_idx,
								@PathVariable String guiest_id3,
								@PathVariable String quantity,
								HttpSession session,
								Model model) {
		//guiest_id3 : 사이즈 qunatity : 수량
		int intQuantity = Integer.parseInt(quantity);
		GoodsBean goodsBean = goodsService.getGoodsInfo(goods_idx);
		goodsBean.setGoods_size(guiest_id3);
		goodsBean.setGoods_quantity(intQuantity);
		goodsBean.setUser_id(loginUserBean.getUser_id());
		
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		//List가 null일 경우
		if(list == null) {
			list = new ArrayList<GoodsBean>();
		}
		
		//장바구니에 동일한 상품이 존재하면 갯수만 늘리기
		if(list != null) {
			for(GoodsBean bean : list) {
				System.out.println(goodsBean.getUser_id());
				if(bean.getUser_id().equals(goodsBean.getUser_id()) 
						&& bean.getGoods_idx() == goodsBean.getGoods_idx()
						&& bean.getGoods_size().equals(goodsBean.getGoods_size())) {
					bean.setGoods_quantity(bean.getGoods_quantity() + goodsBean.getGoods_quantity());
					checkCartGoodsExist = true;
					break;
				}
			}
		}
		//동일한 상품이 존재하지 않으면 빈 추가해주기
		if(checkCartGoodsExist == false) {
			list.add(goodsBean);
		}else {
			checkCartGoodsExist = false;
		}
		
		session.setAttribute("cartList", list);
		
		return "true";
	}
	
}
