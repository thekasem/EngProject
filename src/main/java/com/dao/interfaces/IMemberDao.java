package com.dao.interfaces;

import java.util.List;

import com.entity.bonanza.MemberMini;


public interface IMemberDao {
	
	 public String createCriteriaSearch(MemberMini obj, boolean isOrdering, boolean isAscending, boolean isCount);
		
	 public List<MemberMini> getListByCriteriaSearch(MemberMini criteriaSearch, boolean isOrdering, boolean isAscending, int firstResult, int maxResult);
	 
	 public int getCountByCriteriaSearch(MemberMini criteriaSearch);
	 
	 public MemberMini getObjectById(int eventId);

	 public void save(MemberMini entity);
	 
	 public void delete(MemberMini entity);

}
