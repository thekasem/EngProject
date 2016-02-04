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

	public List<String> getNameBrowsers(String name) {
		return activityLogDao.getNameBrowsers(name);
	}

	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy) {
		List<Float> result = new ArrayList<Float>();
		for (String data : name) {
			float percent = calPercent(data, searchBy);
			result.add(percent);
			
		}
		return result;
	}
	
	private float calPercent(String name,Boolean searchBy){ 
		float countBrowser = activityLogDao.getDataBrowsers(name, searchBy);
		float countAll = activityLogDao.getCountByCriteriaSearch(new ActivityLogMini());
		float result = (countBrowser/countAll)*100;
		return result; 
	}

}
