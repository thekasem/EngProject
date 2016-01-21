package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAUMJsonAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2656397936123464544L;

	private String []asset = { "AUM BY CIF", "AUM BY Branch", "Portholding" };
	
	private float[] dataAUMBYCIF = { (float) 11.6, (float) 11.1, 12, (float) 12.3, (float) 10.7, (float) 9.4, (float) 9.8, (float) 9.6,
			(float) 9.8, (float) 9.5, (float) 8.5, (float) 7.4 };
	private float[] dataAUMBYBranch = { 2, 8, 8, 8, 1, 3, 5, 9, 9, 6, 6, 3 };
	private float[] dataPortholding = {	(float) 0.2, (float) 0.1, (float) 0.3, (float) 0.3, 1, (float) 3.1, (float) 3.1, (float) 2.5, (float) 1.5,
			(float) 1.9, (float) 2.1, (float) 2.3 };
	
	public String execute() {
		return Action.SUCCESS;
	}

	public float[] getDataAUMBYCIF() {
		return dataAUMBYCIF;
	}

	public void setDataAUMBYCIF(float[] dataAUMBYCIF) {
		this.dataAUMBYCIF = dataAUMBYCIF;
	}

	public float[] getDataPortholding() {
		return dataPortholding;
	}

	public void setDataPortholding(float[] dataPortholding) {
		this.dataPortholding = dataPortholding;
	}

	public String [] getAsset() {
		return asset;
	}

	public void setAsset(String [] asset) {
		this.asset = asset;
	}

	public float[] getDataAUMBYBranch() {
		return dataAUMBYBranch;
	}

	public void setDataAUMBYBranch(float[] dataAUMBYBranch) {
		this.dataAUMBYBranch = dataAUMBYBranch;
	}
}