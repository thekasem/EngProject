package com.controller.implement;

import com.controller.interfaces.IPortHoldingBySubAccountController;
import com.dao.interfaces.IPortHoldingBySubAccountDao;
import com.entity.bonanza.PortHoldingBySubAccountMini;

public class PortHoldingBySubAccountController implements
		IPortHoldingBySubAccountController {

	IPortHoldingBySubAccountDao portHoldingBySubAccountDao;

	public int getCountByCriteriaSearch(PortHoldingBySubAccountMini criteriaSearch) {
		return portHoldingBySubAccountDao.getCountByCriteriaSearch(criteriaSearch);
	}

	public IPortHoldingBySubAccountDao getPortHoldingBySubAccountDao() {
		return portHoldingBySubAccountDao;
	}

	public void setPortHoldingBySubAccountDao(
			IPortHoldingBySubAccountDao portHoldingBySubAccountDao) {
		this.portHoldingBySubAccountDao = portHoldingBySubAccountDao;
	}
	
}