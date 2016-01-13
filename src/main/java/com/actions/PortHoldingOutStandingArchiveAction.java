package com.actions;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactPortHoldingBySubAccountArchive;
import com.entity.archive.ArchivePortHoldingBySubAccountMini;

public class PortHoldingOutStandingArchiveAction extends ActionClass<ArchivePortHoldingBySubAccountMini> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 824479425584311109L;
	private ContactPortHoldingBySubAccountArchive archiveController;
	
	
	@Override
	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactPortHoldingBySubAccountArchive) context
				.getBean("portHoldingBySubAccountArchive");
		session();
	}
	@Override
	public String list() {
		ContactController();
		count = archiveController.getCount(entity);
		int firstResult = 0;
		list = archiveController.getList(entity, true, false, firstResult, 15);
		return LIST;
	}
	@Override
	public String addArchive() {
		ContactController();
		archiveController.addArchive(date, condition);
		list();
		return LIST;
	}
}
