package com.dao.interfaces;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.entity.User;

public interface ILoginDao {
	public  User checkLogin(String user, String password);
	
	public  User checkLoginUser(String user, String password);
	
	public List<User> getUser();
	
	public void testSent(List<User> list) throws IllegalAccessException, InvocationTargetException;

}
