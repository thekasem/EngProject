package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class CustomerJsonAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1702822897109065382L;

	private String customer = "Customer";

	private float[] datacustomer1 = { 5, 3, 4, 7, 2, 5, 8, 20, 50, 4, 11, 30 };
	private float[] datacustomer2 = { 7, 5, 8, 9, 3, 8, 9, 30, 40, 8, 19, 36 };

	public String execute() {
		return Action.SUCCESS;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public float[] getDatacustomer1() {
		return datacustomer1;
	}

	public void setDatacustomer1(float[] datacustomer1) {
		this.datacustomer1 = datacustomer1;
	}

	public float[] getDatacustomer2() {
		return datacustomer2;
	}

	public void setDatacustomer2(float[] datacustomer2) {
		this.datacustomer2 = datacustomer2;
	}
}