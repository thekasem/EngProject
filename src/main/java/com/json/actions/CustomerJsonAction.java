package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class CustomerJsonAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1702822897109065382L;

	private String customer = "Customer";

	private float[] datacustomer = { 5, 3, 4, 7, 2, 5, 8, 20, 50, 4, 11, 30 };

	public String execute() {
		return Action.SUCCESS;
	}

	public float[] getDatacustomer() {
		return datacustomer;
	}

	public void setDatacustomer(float[] datacustomer) {
		this.datacustomer = datacustomer;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}
}