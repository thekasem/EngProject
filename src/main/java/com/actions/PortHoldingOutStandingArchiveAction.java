package com.actions;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactPortHoldingBySubAccountArchive;
import com.entity.archive.ArchivePortHoldingBySubAccountMini;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PortHoldingOutStandingArchiveAction extends ActionSupport
		implements ModelDriven<ArchivePortHoldingBySubAccountMini> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7736900403232040890L;
	private static String LIST = "list";
	private static String ADD = "add";
	private static String SEARCH = "search";

	private List<ArchivePortHoldingBySubAccountMini> list;
	private ContactPortHoldingBySubAccountArchive archiveController;
	private String userNameLogin;
	private ArchivePortHoldingBySubAccountMini archivePortHolding = new ArchivePortHoldingBySubAccountMini();
	private int page;
	private String date = "";
	private String condition = "";
	private int count;

	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactPortHoldingBySubAccountArchive) context
				.getBean("portHoldingBySubAccountArchive");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}
    public String list(){
    	ContactController();
    	count = archiveController.getCount(archivePortHolding);
    	int firstResult = 0;
    	list = archiveController.getList(archivePortHolding, true, false, firstResult, 15);
    	return LIST;
    }
    
    public String add(){
    	ContactController();
    	return ADD;
    }
    
    public String addArchive() throws IllegalAccessException,
	InvocationTargetException {
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
	public String archive() {
		return "list";
	}

	public ArchivePortHoldingBySubAccountMini getModel() {
		return archivePortHolding;
	}

}
