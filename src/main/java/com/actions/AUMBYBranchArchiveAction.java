package com.actions;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactAUMByBranchArchive;
import com.entity.archive.ArchiveAUMByBranchMini;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AUMBYBranchArchiveAction extends ActionSupport implements
		ModelDriven<ArchiveAUMByBranchMini> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1494202922074124279L;
	private static String LIST = "list";
	private static String ADD = "add";
	private static String SEARCH = "search";
	
	private List<ArchiveAUMByBranchMini> list;
	private ContactAUMByBranchArchive archiveController;
	private String userNameLogin;
	private ArchiveAUMByBranchMini archiveAUMByBranch = new ArchiveAUMByBranchMini();
	private int page;
	private String date="";
	private String condition="";
	private int count;
	
	public void ContactController(){
		ApplicationContext context = new ClassPathXmlApplicationContext("SpringBeans.xml");
		archiveController = (ContactAUMByBranchArchive)context.getBean("aumByBranchArchive");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}
	
	public String list(){
		ContactController();
		count = archiveController.getCount(archiveAUMByBranch);
		int firstResult = 0;
		list = archiveController.getList(archiveAUMByBranch, true, false, firstResult, 15);
		return LIST;
	}
	public String add() {
		ContactController();
		return ADD;
	}
	public String addArchive() throws IllegalAccessException,
	InvocationTargetException{
		ContactController();
		archiveController.addArchive(date, condition);
		list();
		return LIST;
	}
	public String search(){
		ContactController();
		return SEARCH;
	}
	public String searchArchive(){
		ContactController();
		list();
		return LIST;
	}

	public ArchiveAUMByBranchMini getModel() {
		return archiveAUMByBranch;
	}

	public ArchiveAUMByBranchMini getArchiveAUMByBranch() {
		return archiveAUMByBranch;
	}

	public void setArchiveAUMByBranch(ArchiveAUMByBranchMini archiveAUMByBranch) {
		this.archiveAUMByBranch = archiveAUMByBranch;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public List<ArchiveAUMByBranchMini> getList() {
		return list;
	}

	public String getUserNameLogin() {
		return userNameLogin;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
