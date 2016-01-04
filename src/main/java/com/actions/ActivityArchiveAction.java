package com.actions;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactActivityArchiveLog;
import com.entity.archive.ArchiveActivityLogMini;
import com.opensymphony.xwork2.ActionSupport;

public class ActivityArchiveAction extends ActionSupport {
	
	private static String LIST 	= "list";
	private static String ADD = "add";
	private static String SEARCH = "search";
	
	private List<ArchiveActivityLogMini> list;
	private ContactActivityArchiveLog archiveController;
	private String userNameLogin;
	private ArchiveActivityLogMini archiveActivityLog;
	private int page;
	private String date;
	private String condition;
	private int count;
	
	public void ContactController(){
		ApplicationContext context = new ClassPathXmlApplicationContext("SpringBeans.xml");
		archiveController = (ContactActivityArchiveLog)context.getBean("activityArchive");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}
	public String list(){
		ContactController();
		archiveActivityLog = new ArchiveActivityLogMini();
		count = archiveController.getCount(archiveActivityLog);
		int firstResult = 0;
		list = archiveController.getList(archiveActivityLog, true, false, firstResult, 15);
		
		return LIST;
	}
	
	public String add(){
		return ADD;
	}
	public String addArchive() throws IllegalAccessException, InvocationTargetException{
		ContactController();
		archiveController.addArchive(date, condition);
		return LIST;
	}
	public String search(){
		ContactController();
		return SEARCH;
	}

	public String searchArchive(){
		ContactController();
		count = archiveController.getCount(archiveActivityLog);
		int firstResult = 0;
		list = archiveController.getList(archiveActivityLog, true, false, firstResult, 15);
		return LIST;
	}
	
	public List<ArchiveActivityLogMini> getList() {
		return list;
	}
	public String getUserNameLogin() {
		return userNameLogin;
	}
	public void setArchiveActivityLog(ArchiveActivityLogMini archiveActivityLog) {
		this.archiveActivityLog = archiveActivityLog;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public int getCount() {
		return count;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	
	
}
