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
	private static final String DASHBOARD = "dashboard";
	private static final String BROWSERS = "browsers";
	private static final String LOGIN = "login";
	private static final String USER = "user";
	private static final String TOPMODULE = "topmodule";
	private static final String NEWUSER = "newuser";
	private static final String CUSTOMERS = "customers";
	private static final String TOPUSER = "topuser";
	private static final String ARGONSITE = "argonsite";
	private static final String VIEWAUM = "viewaum";
	private static final String DISKUSAGE = "diskusage";
	
	private String userNameLogin;
	private String date;

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
    
	public String browser(){
		return BROWSERS;
	}
	
	public String user(){
		return USER;
	}
	
	public String login(){
		return LOGIN;
	}
	
	public String topModule(){
		return TOPMODULE;
	}
	
	public String newUser(){
		return NEWUSER;
	}
	
	public String customer(){
		return CUSTOMERS;
	}
	
	public String topUser(){
		return TOPUSER;
	}
	
	public String argTimeOnSite(){
		return ARGONSITE;
	}
	
	public String viewAUM(){
		return VIEWAUM;
	}
	
	public String diskUsage(){
		return DISKUSAGE;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUserNameLogin() {
		return userNameLogin;
	}

}
