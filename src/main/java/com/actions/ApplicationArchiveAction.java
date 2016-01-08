package com.actions;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactApplicationArchiveLog;
import com.entity.archive.ArchiveApplicationLogMini;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ApplicationArchiveAction extends ActionSupport implements
		ModelDriven<ArchiveApplicationLogMini> {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5507880976290006094L;
	private static String LIST = "list";
	private static String ADD = "add";
	private static String SEARCH = "search";

	private List<ArchiveApplicationLogMini> list;
	private ContactApplicationArchiveLog archiveController;
	private String userNameLogin;
	private ArchiveApplicationLogMini archiveApplicationLog = new ArchiveApplicationLogMini();
	private int page;
	private String date = "";
	private String condition = "";
	private int count;

	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactApplicationArchiveLog) context
				.getBean("applicationArchive");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}

	public String list() {
		ContactController();
		count = archiveController.getCount(archiveApplicationLog);
		int firstResult = 0;
		list = archiveController.getList(archiveApplicationLog, true, false,firstResult, 15);
		return LIST;
	}

	public String add() {
		ContactController();
		return ADD;
	}

	public String addArchive() {
		ContactController();
		archiveController.addArchive(date, condition);
		list();
		return LIST;
	}

	public String search() {
		ContactController();
		return SEARCH;
	}

	public String searchArchive() {
		ContactController();
		list();
		return LIST;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<ArchiveApplicationLogMini> getList() {
		return list;
	}

	public String getUserNameLogin() {
		return userNameLogin;
	}

	public void setArchiveApplicationLog(
			ArchiveApplicationLogMini archiveApplicationLog) {
		this.archiveApplicationLog = archiveApplicationLog;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public ArchiveApplicationLogMini getModel() {
		return archiveApplicationLog;
	}

	public ArchiveApplicationLogMini getArchiveApplicationLog() {
		return archiveApplicationLog;
	}

}
