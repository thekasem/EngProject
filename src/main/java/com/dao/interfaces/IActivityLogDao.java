package com.dao.interfaces;

import java.util.List;

import com.entity.bonanza.ActivityLogMini;


public interface IActivityLogDao {

	 public String createCriteriaSearch(ActivityLogMini obj, boolean isOrdering, boolean isAscending, boolean isCount);
		
	 public List<ActivityLogMini> getListByCriteriaSearch(ActivityLogMini criteriaSearch, boolean isOrdering, boolean isAscending, int firstResult, int maxResult);
	 
	 public int getCountByCriteriaSearch(ActivityLogMini criteriaSearch);
	 
	 public ActivityLogMini getObjectById(int eventId);

	 public void save(ActivityLogMini entity);
	 
	 public void delete(ActivityLogMini entity);
}
