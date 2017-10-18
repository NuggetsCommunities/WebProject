package com.materials.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.materials.dao.UserDao;
import com.materials.entity.User;

/**
 * 
 * @author Allen
 * 2017��10��18������11:23:39
 */
@RestController
public class UserController {
	@Autowired
	private UserDao userDao;
	@ResponseBody
	@RequestMapping(value="/getUser",method = RequestMethod.GET)
	public List<User> getUsers(){
		List<User> users = userDao.getUsers();
		return users;
	}
	
}
