package com.soft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.soft.dao.UserDAO;
import com.soft.entity.User;

@Component
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userdao;
	
	@Override
	public int saveUserService(User user) {
	
	
		return userdao.saveUserDAO(user);
	}
	@Override
	public List<User> getAllUserServie() {
		// TODO Auto-generated method stub
		return userdao.getAllusers();
	}
	@Override
	public void deleteByIdService(int userId) {
		
		userdao.deleteByIdDAO(userId);
		
	}
	@Override
	public User getuserByIdService(int userId) {
		// TODO Auto-generated method stub
		return userdao.getByIdDAO(userId);
	}
	@Override
	public void updateExistUserService(User user) {
		 userdao.updateExistUserDAO(user);
	}

}
