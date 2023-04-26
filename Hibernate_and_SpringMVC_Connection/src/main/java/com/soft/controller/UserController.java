package com.soft.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soft.model.User;

@Controller
public class UserController {
	
	@RequestMapping(value ="/saveUser", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user) {
		
		System.out.println(user.getID());
		System.out.println(user.getName());
		System.out.println(user.getEmail());
		System.out.println(user.getAddress());
		System.out.println(user.getPassword());
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("UserDetails", user);
//		----------------------------------------------------------------------------
		Configuration cnfg = new Configuration();
		cnfg.configure("com/soft/cnfg/hibernate.cfg.xml");
		
		SessionFactory factory = cnfg.buildSessionFactory();
		
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(mav);
		tx.commit();	
//		================================================================================
		
		mav.setViewName("Display");
		return mav;
		
	}

}
