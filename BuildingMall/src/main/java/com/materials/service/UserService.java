package com.materials.service;

import java.util.List;

import com.materials.bean.LogOnRequest;
import com.materials.bean.LogOnResponse;
import com.materials.entity.User;

public interface UserService {
	
	public List<User> getUsers();
	
	public LogOnResponse logon(LogOnRequest logOnRequest);
}
