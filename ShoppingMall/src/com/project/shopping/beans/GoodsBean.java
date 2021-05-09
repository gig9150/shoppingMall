package com.project.shopping.beans;

public class GoodsBean {

	private int goods_idx;
	private int goods_category_idx;
	private String goods_name;
	private String goods_content;
	private String goods_price;
	private String goods_file;
	
	//장바구니에 담을 property
	private String goods_size;
	private int goods_quantity;
	//로그인 빈의 아이디와 비교할 장바구니 아이디 property
	private String user_id;
	
	public int getGoods_idx() {
		return goods_idx;
	}
	public void setGoods_idx(int goods_idx) {
		this.goods_idx = goods_idx;
	}
	public int getGoods_category_idx() {
		return goods_category_idx;
	}
	public void setGoods_category_idx(int goods_category_idx) {
		this.goods_category_idx = goods_category_idx;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_content() {
		return goods_content;
	}
	public void setGoods_content(String goods_content) {
		this.goods_content = goods_content;
	}
	public String getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_file() {
		return goods_file;
	}
	public void setGoods_file(String goods_file) {
		this.goods_file = goods_file;
	}
	public String getGoods_size() {
		return goods_size;
	}
	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}
	
	public int getGoods_quantity() {
		return goods_quantity;
	}
	public void setGoods_quantity(int goods_quantity) {
		this.goods_quantity = goods_quantity;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	
	
}
