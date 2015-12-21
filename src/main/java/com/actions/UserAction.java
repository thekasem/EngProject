package com.actions;

import java.util.List;

import com.dao.App;
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
		String result = "";
		App app = new App();
		list = app.getUser();
		for (User listUser : list) {
			if (user.getUserName().equals(listUser.getUserName())
					&& user.getPassword().equals(listUser.getPassword())) {
				result = "success";
				return result;
			}
		}
		arlert = "Login Fail";
		result = "input";
		return result;
	}

}
