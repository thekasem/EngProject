package com.controller.implement;

import com.controller.interfaces.IAUMByCIFController;
import com.dao.interfaces.IAUMByCIFDao;
import com.entity.bonanza.AUMByCIFMini;

public class AUMByCIFController implements IAUMByCIFController {
	
	IAUMByCIFDao aumByCIFDao;

	public int getCountByCriteriaSearch(AUMByCIFMini criteriaSearch) {
		return aumByCIFDao.getCountByCriteriaSearch(criteriaSearch);
	}

	public IAUMByCIFDao getAumByCIFDao() {
		return aumByCIFDao;
	}

	public void setAumByCIFDao(IAUMByCIFDao aumByCIFDao) {
		this.aumByCIFDao = aumByCIFDao;
	}
	
}