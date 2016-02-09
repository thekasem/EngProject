package com.contact.action;

import java.util.List;

import com.controller.interfaces.IActivityLogController;

public class ContactActivityLog implements IActivityLogController {
	
	IActivityLogController activityLogController;
	
	

	public IActivityLogController getActivityLogController() {
		return activityLogController;
	}

	public void setActivityLogController(
			IActivityLogController activityLogController) {
		this.activityLogController = activityLogController;
	}

	public List<String> getNameBrowsers(String name) {
		return activityLogController.getNameBrowsers(name);
	}

	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy) {
		return activityLogController.getDataBrowsers(name, searchBy);
	}

}