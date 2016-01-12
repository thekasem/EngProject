package com.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

public class DashBoardAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -146843680046469165L;
	private static String DASHBOARD = "dashboard";
	private String userNameLogin;

	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}

	public String showDashBoard() {
		ContactController();
		return DASHBOARD;
	}

	public String getUserNameLogin() {
		return userNameLogin;
	}

}
