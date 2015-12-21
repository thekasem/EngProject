package com.actions;

import com.bean.User;

public class UserAction {
	private User user;
	private String arlert ="";

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	} 
	
	public String getArlert() {
		return arlert;
	}

	public String execute(){
		if (user.getName().equals("kasemsun")&&user.getCity().equals("0000")) {
			return "success";
		}
		arlert = "Login Fail";
		return "input";
		
	}

}
