package com.dao.interfaces;

import java.util.List;

import com.entity.User;

public interface ILoginDao {
	public  User checkLogin(String user, String password);
	
	public  User checkLoginUser(String user, String password);
	
	public List<User> getUser();

}
