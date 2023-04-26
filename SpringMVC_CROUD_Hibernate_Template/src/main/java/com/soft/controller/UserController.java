package com.soft.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soft.entity.User;
import com.soft.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)

	public String saveUser(@ModelAttribute User user) {

		int savedUserId = userservice.saveUserService(user);

		ModelAndView mav = new ModelAndView();
		mav.addObject("savedUserId", savedUserId);
   
		mav.setViewName("Display");
		System.out.println(user.getAddress());

		String DisplayUrl="/getAlluser";
		
		return "redirect:"+DisplayUrl;

	}

	@RequestMapping(value = "/getAlluser", method = RequestMethod.GET)
	public ModelAndView getAllusers() {
		List<User> userList = userservice.getAllUserServie();
		System.out.println(userList);
		ModelAndView mav = new ModelAndView();
        
		mav.addObject("userList",userList);
		mav.setViewName("Display");
		return mav;
	}
	
	@RequestMapping(value = "/deleteById", method = RequestMethod.GET)
	public String deleteById(@RequestParam int ID) {
		
		userservice.deleteByIdService(ID);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		String DisplayUrl="/getAlluser";
		return "redirect:"+DisplayUrl;
	}
	
	@RequestMapping("/updateUserForm")
	public ModelAndView updateUserForm(@RequestParam int ID) {
		User existUser = userservice.getuserByIdService(ID);
		System.err.println(existUser);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("ExistUser",existUser);
		mav.setViewName("updateUser");
		
		 return mav;
	}
	
	@RequestMapping(value = "/updateUser", method= RequestMethod.POST)
	public String updateExistUser(@ModelAttribute User user) {
		
		ModelAndView mav = new ModelAndView();
		 userservice.updateExistUserService(user);
		mav.setViewName("index");
		String DisplayUrl="/getAlluser";
		return "redirect:"+DisplayUrl;
	}
}



//=======================Display page=======================================
// <% int userId= (int) request.getAttribute("savedUserId"); %>

//<span><%=userId%></span>
