package com.controller.interfaces;

import java.util.List;

import com.entity.archive.ArchiveActivityLogMini;

public interface IActivityArchiveLogController {
	
	public int getCount(ArchiveActivityLogMini criteriaSearch);
	
	public List<ArchiveActivityLogMini> getList(ArchiveActivityLogMini criteriaSearch, Boolean isOrdering, Boolean isAscending, Integer firstResult, Integer maxResult);
	
	public ArchiveActivityLogMini getObjectById(int eventId);
	
	public void addArchive();
	
	

}
