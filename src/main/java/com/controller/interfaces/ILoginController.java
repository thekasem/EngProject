package com.controller.interfaces;

import java.util.List;

import com.entity.User;

public interface ILoginController {
	public User checkLogin(String user, String password);

	public User checkLoginUser(String user, String password);
	
	List<User> getUser();
}
