package com.controller.implement;

import com.controller.interfaces.IAUMByBranchController;
import com.dao.interfaces.IAUMByBranchDao;
import com.entity.bonanza.AUMByBranchMini;

public class AUMByBranchController implements IAUMByBranchController {
	
	IAUMByBranchDao aumByBranchDao;

	public int getCountByCriteriaSearch(AUMByBranchMini criteriaSearch) {
		return aumByBranchDao.getCountByCriteriaSearch(criteriaSearch);
	}

	public IAUMByBranchDao getAumByBranchDao() {
		return aumByBranchDao;
	}

	public void setAumByBranchDao(IAUMByBranchDao aumByBranchDao) {
		this.aumByBranchDao = aumByBranchDao;
	}
	
}