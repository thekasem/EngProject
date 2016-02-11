package com.controller.implement;

import com.controller.interfaces.IBranchCustomerController;
import com.dao.interfaces.IBranchCustomerDao;

public class BranchCustomerController implements IBranchCustomerController {

	IBranchCustomerDao branchCustomerDao;

	public IBranchCustomerDao getBranchCustomerDao() {
		return branchCustomerDao;
	}

	public void setBranchCustomerDao(IBranchCustomerDao branchCustomerDao) {
		this.branchCustomerDao = branchCustomerDao;
	}
	
	
}
