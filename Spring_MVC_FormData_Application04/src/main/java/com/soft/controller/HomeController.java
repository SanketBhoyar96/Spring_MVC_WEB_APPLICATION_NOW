package com.soft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/home")
public class HomeController {
	
	@RequestMapping("/index")
	public String homePage() {
		
		return "index";
	}
	
	@RequestMapping("/userForm")
	public String userForm() {
		return "registerUser";
	}

}
