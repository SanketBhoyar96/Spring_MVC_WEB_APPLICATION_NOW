package com.soft.dao;

import java.util.List;

import javax.transaction.Transactional;

//import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.soft.entity.User;

@Component
public class UserDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveUserDAO(User user) {
		
	int userId = (int) hibernateTemplate.save(user);
	
		return userId;
		
	}
	
	public List<User> getAllusers(){
		List<User> list = hibernateTemplate.loadAll(User.class);
		return list;
	}
	
	@Transactional
	public void deleteByIdDAO(int userId) {
		User checkUser = hibernateTemplate.get(User.class, userId);
		if (checkUser != null) {
			hibernateTemplate.delete(checkUser);
		}else {
			System.out.println("user Not Found");
		}
		
	}
	
	public User getByIdDAO(int userId){
		User exitUser = hibernateTemplate.get(User.class, userId);
		
		return exitUser;
	}
	
	@Transactional
	public void updateExistUserDAO(User user) {
		hibernateTemplate.saveOrUpdate(user); 
		
	}
}
