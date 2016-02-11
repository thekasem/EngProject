package com.controller.implement;

import java.util.ArrayList;
import java.util.List;

import com.controller.interfaces.IActivityLogController;
import com.dao.interfaces.IActivityLogDao;
import com.entity.bonanza.ActivityLogMini;

public class ActivityLogController implements IActivityLogController {
	
	private IActivityLogDao activityLogDao;

	public IActivityLogDao getActivityLogDao() {
		return activityLogDao;
	}

	public void setActivityLogDao(IActivityLogDao activityLogDao) {
		this.activityLogDao = activityLogDao;
	}

	public List<String> getNameBrowsers(String name ,String year) {
		return activityLogDao.getNameBrowsers(name,year);
	}

	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy ,String year) {
		List<Float> result = new ArrayList<Float>();
		for (String data : name) {
			float percent = calPercent(data, searchBy, year);
			result.add(percent);
			
		}
		return result;
	}
	
	private float calPercent(String name,Boolean searchBy, String year){ 
		float countBrowser = activityLogDao.getDataBrowsers(name, searchBy, year);
		float countAll = activityLogDao.getCountByCriteriaSearch(new ActivityLogMini());
		float result = (countBrowser/countAll)*100;
		return result; 
	}

	public List<Integer> getDataAction(String name, String year) {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = 1; i <= 12; i++) {
			result.add(activityLogDao.getDataAction(name, yearAndMonth(year, i)));
		}
		return result; 
	}

	public List<String> getNameAction(String year) {
		return activityLogDao.getNameAction(year);
	}
	
	private String yearAndMonth(String year, int month){
		String result = "";
		if (month < 10) {
			result = year + "0"+Integer.toString(month);
		} else {
			result = year +Integer.toString(month);
		}
		return result;
	}

	public int getCountByCriteriaSearch(ActivityLogMini criteriaSearch) {
		return activityLogDao.getCountByCriteriaSearch(criteriaSearch);
	}

}
