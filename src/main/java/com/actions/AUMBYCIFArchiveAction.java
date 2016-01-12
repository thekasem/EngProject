package com.actions;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactAUMByBranchArchive;
import com.contact.action.ContactAUMByCIFArchive;
import com.contact.action.ContactPortHoldingBySubAccountArchive;
import com.entity.archive.ArchiveAUMByCIFMini;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AUMBYCIFArchiveAction extends ActionSupport implements
		ModelDriven<ArchiveAUMByCIFMini> {

	/**
* 
*/
	private static final long serialVersionUID = 8314930565577728489L;
	private static String LIST = "list";
	private static String ADD = "add";
	private static String SEARCH = "search";

	private List<ArchiveAUMByCIFMini> list;
	private ContactAUMByCIFArchive archiveController;
	private ContactAUMByBranchArchive contactAUMByBranchArchive;
	private ContactPortHoldingBySubAccountArchive contactPortHoldingBySubAccountArchive;
	private String userNameLogin;
	private ArchiveAUMByCIFMini archiveAUMByCIF = new ArchiveAUMByCIFMini();
	private int page;
	private String date = "";
	private String condition = "";
	private int count;

	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactAUMByCIFArchive) context
				.getBean("aumByCIFArchive");
		contactAUMByBranchArchive = (ContactAUMByBranchArchive) context
				.getBean("aumByBranchArchive");
		contactPortHoldingBySubAccountArchive = (ContactPortHoldingBySubAccountArchive) context
				.getBean("portHoldingBySubAccountArchive");
		HttpSession session = ServletActionContext.getRequest().getSession();
		userNameLogin = (String) session.getAttribute("user");
	}

	public String list() {
		ContactController();
		count = archiveController.getCount(archiveAUMByCIF);
		int firstResult = 0;
		list = archiveController.getList(archiveAUMByCIF, true, false,
				firstResult, 15);
		return LIST;
	}

	public String add() {
		ContactController();
		return ADD;
	}

	public String addArchive() throws IllegalAccessException,
			InvocationTargetException {
		ContactController();
		archiveController.addArchive(date, condition);
		contactAUMByBranchArchive.addArchive(date, condition);
		contactPortHoldingBySubAccountArchive.addArchive(date, condition);
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

	public ArchiveAUMByCIFMini getModel() {
		return archiveAUMByCIF;
	}

	public ArchiveAUMByCIFMini getArchiveAUMByCIF() {
		return archiveAUMByCIF;
	}

	public void setArchiveAUMByCIF(ArchiveAUMByCIFMini archiveAUMByCIF) {
		this.archiveAUMByCIF = archiveAUMByCIF;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<ArchiveAUMByCIFMini> getList() {
		return list;
	}

	public void setUserNameLogin(String userNameLogin) {
		this.userNameLogin = userNameLogin;
	}

	public String getUserNameLogin() {
		return userNameLogin;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

}