package com.controller.interfaces;

import java.util.List;

import com.entity.archive.ArchiveAUMByBranchMini;


public interface IAUMByBranchArchiveController {
	
	public int getCount(ArchiveAUMByBranchMini criteriaSearch);
	
	public List<ArchiveAUMByBranchMini> getList(ArchiveAUMByBranchMini criteriaSearch, Boolean isOrdering, Boolean isAscending, Integer firstResult, Integer maxResult);
	
	public ArchiveAUMByBranchMini getObjectById(int eventId);
	
	public void save(List<ArchiveAUMByBranchMini> archive);
	
	public ArchiveAUMByBranchMini ApplicationConvertToArchiveApplication(ArchiveAUMByBranchMini application, String textCondition);

}
