package com.project.shopping.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.shopping.beans.UserBean;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(Model model) {
		return "main";
	}
}
