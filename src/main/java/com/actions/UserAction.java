package com.actions;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactLogin;
import com.dao.implement.App;
import com.entity.User;

public class UserAction {
	private User user;
	private String arlert = "";
	private List<User> list;
	private ContactLogin userController;

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
    public void ContactController(){
    	ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
    	 userController = (ContactLogin)context.getBean("userAction");
    }
	
	public String execute() {
		ContactController();
		
		String result = "";
		User userlogin = new User();
		try{
		  userlogin = userController.checkLoginUser(user.getUserName(), user.getPassword());
			if (userlogin != null){
				list = userController.getUser();
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
