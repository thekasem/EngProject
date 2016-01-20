package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserJsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6309611743864472961L;
	private float[] arrayResult1 = { (float) 0.3, (float) 0.42, (float) 0.29, (float) 0.17, (float) 0.26, (float) 0.77, (float) 2.56 };
    private float result1 = 20.55f ;
	public String execute() {
		return Action.SUCCESS;
	}
	public float[] getArrayResult1() {
		return arrayResult1;
	}
	public void setArrayResult1(float[] arrayResult1) {
		this.arrayResult1 = arrayResult1;
	}
	public float getResult1() {
		return result1;
	}
	public void setResult1(float result1) {
		this.result1 = result1;
	}
	
	
	
}
