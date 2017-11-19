package com.materials.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.materials.bean.LogOnRequest;
import com.materials.bean.LogOnResponse;
import com.materials.dao.UserDao;
import com.materials.entity.User;
import com.materials.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userDao.getUsers();
	}

	
	@Override
	public LogOnResponse logon(LogOnRequest logOnRequest) {
		LogOnResponse logOnResponse = new LogOnResponse();
		
		// TODO Auto-generated method stub
		String name = logOnRequest.getName();
		
		User user = userDao.getPassword(name);
		
		if(user!= null  && logOnRequest.getPassword().equals(user.getPassword()) ) {
		//hard code the response, the version 2 will get value from properties
		
			logOnResponse.setResponseCode("000");
			logOnResponse.setErrorCode("000");
			logOnResponse.setDesciption("success");
			
		
		}else {
			logOnResponse.setResponseCode("BM001");
			logOnResponse.setErrorCode("008");
			logOnResponse.setDesciption("logon validation error");
		}
		return logOnResponse;
	}

}
