package com.contact.action;

import com.controller.interfaces.IBranchCustomerController;

public class ContactBranchCustomer implements IBranchCustomerController{
	
	IBranchCustomerController branchCustomerController;

	public IBranchCustomerController getBranchCustomerController() {
		return branchCustomerController;
	}

	public void setBranchCustomerController(
			IBranchCustomerController branchCustomerController) {
		this.branchCustomerController = branchCustomerController;
	}
	
	

}
