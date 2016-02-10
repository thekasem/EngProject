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

	public List<String> getNameBrowsers(String name,String year) {
		return activityLogController.getNameBrowsers(name, year);
	}

	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy, String year) {
		return activityLogController.getDataBrowsers(name, searchBy, year);
	}

	public List<Integer> getDataAction(String name, String year) {
		return activityLogController.getDataAction(name, year);
	}

	public List<String> getNameAction(String year) {
		return activityLogController.getNameAction(year);
	}

}
