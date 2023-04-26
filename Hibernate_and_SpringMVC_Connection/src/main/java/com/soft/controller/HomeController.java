package com.soft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
	@RequestMapping("/index")
	public String Homepage() {
		return "index";
	}
	@RequestMapping("/userForm")
	public String userForm() {
		return "registerUser";
	}
}
