package com.materials.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.materials.bean.LogOnRequest;
import com.materials.bean.LogOnResponse;
import com.materials.entity.User;
import com.materials.service.UserService;

/**
 * 
 * @author Allen
 * 2017��10��18������11:23:39
 */
@RestController
@RequestMapping("/api")
public class UserController {
	
	//logger from LoggerFactory
	private static Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/users",method = RequestMethod.GET)
	public List<User> getUsers(){
		List<User> users = userService.getUsers();
		return users;
	}
	
	/*
	 * validate user logon
	 * method: post
	 */
	@RequestMapping(value="/users/logon",method=RequestMethod.POST)
	public @ResponseBody LogOnResponse validateUser(@RequestBody final LogOnRequest logOnRequest,HttpServletRequest request, HttpServletResponse response) {
		LogOnResponse  logOnResponse  = null;
		//inbound log
		if(UserController.logger.isInfoEnabled()) {
			UserController.logger.info("method validateUser in~~~~");
		}
		
		//verify user
		if(logOnRequest != null 
				&& logOnRequest.getName() != null 
				&& logOnRequest.getPassword() != null) {
			
			logOnResponse = userService.logon(logOnRequest);
			
			//if logon successful, add session
			if(logOnResponse!=null && "000".equals(logOnResponse.getResponseCode())) {
				
				//set session timeout, the time unit is "s"
				request.getSession().setMaxInactiveInterval(60*60);
				//user validated, save user info to session
				request.getSession().setAttribute("userInfo", logOnRequest);
			}
		}
		
		
		return logOnResponse;
	}
	
}
