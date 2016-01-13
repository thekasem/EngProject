package com.actions;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactApplicationArchiveLog;
import com.entity.archive.ArchiveApplicationLogMini;

public class ApplicationArchiveAction extends
		ActionClass<ArchiveApplicationLogMini> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5268952407488444857L;
	private ContactApplicationArchiveLog archiveController;

	@Override
	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		archiveController = (ContactApplicationArchiveLog) context
				.getBean("applicationArchive");
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
