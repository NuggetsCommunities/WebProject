package com.materials.dao;

import java.util.List;

import com.materials.entity.User;
/**
 * 
 * @author Allen
 * 2017��10��18������11:23:01
 */
public interface UserDao {
	public List<User> getUsers();
	
	//get pws from username
	
	public User getPassword(String name);
}
