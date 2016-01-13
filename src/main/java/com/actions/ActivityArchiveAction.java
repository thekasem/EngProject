package com.actions;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactActivityArchiveLog;
import com.entity.archive.ArchiveActivityLogMini;

public class ActivityArchiveAction extends ActionClass<ArchiveActivityLogMini>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3390300902292062058L;
	private ContactActivityArchiveLog archiveController;
	
	
	@Override
	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactActivityArchiveLog) context
				.getBean("activityArchive");
		session();
	}
	@Override
	public String list() {
		ContactController();
		count = archiveController.getCount(entity);
		int firstResult = 0;
		list = archiveController.getList(entity, true, false,
				firstResult, 15);

		return LIST;
	}
	@Override
	public String addArchive() {
		ContactController();
		try {
			archiveController.addArchive(date, condition);
			list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return LIST;
	}
	
}
