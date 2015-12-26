package com.dao.interfaces;

import java.util.List;

import com.entity.archive.ArchiveApplicationLogMini;

public interface IApplicationArchiveLogDao {
	
	 public String createCriteriaSearch(ArchiveApplicationLogMini obj, boolean isOrdering, boolean isAscending, boolean isCount);
		
	 public List<ArchiveApplicationLogMini> getListByCriteriaSearch(ArchiveApplicationLogMini criteriaSearch, boolean isOrdering, boolean isAscending, int firstResult, int maxResult);
	 
	 public int getCountByCriteriaSearch(ArchiveApplicationLogMini criteriaSearch);
	 
	 public ArchiveApplicationLogMini getObjectById(int eventId, boolean arg1);

}
