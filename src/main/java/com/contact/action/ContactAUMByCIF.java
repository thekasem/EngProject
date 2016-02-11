package com.contact.action;

import com.controller.interfaces.IAUMByCIFController;
import com.entity.bonanza.AUMByCIFMini;

public class ContactAUMByCIF implements IAUMByCIFController{
	
	IAUMByCIFController aumByCIFController;
	
	public int getCountByCriteriaSearch(AUMByCIFMini criteriaSearch) {
		return aumByCIFController.getCountByCriteriaSearch(criteriaSearch);
	}

	public IAUMByCIFController getAumByCIFController() {
		return aumByCIFController;
	}

	public void setAumByCIFController(IAUMByCIFController aumByCIFController) {
		this.aumByCIFController = aumByCIFController;
	}
	
}