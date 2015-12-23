package com.actions;

import java.util.List;

import com.dao.App;
import com.dao.LoginDao;
import com.entity.User;

public class UserAction {
	private User user;
	private String arlert = "";
	private List<User> list;

	public String getArlert() {
		return arlert;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getList() {
		return list;
	}

	public String execute() {
		LoginDao loginDao = new LoginDao();
		String result = "";
		User userlogin = new User();
		try{
		  userlogin = loginDao.checkLoginUser(user.getUserName(), user.getPassword());
			if (userlogin != null){
				App app = new App();
				list = app.getUser();
				result = "success";
				return result;
			}
		}catch(Exception e){
			result= "input";
			e.printStackTrace();
		}
		
		return result;
	}

}
