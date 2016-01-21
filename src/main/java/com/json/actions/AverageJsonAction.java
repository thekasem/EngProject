package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class AverageJsonAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5384765347204943525L;

	private String timeonsite = "Time On Site";
	
	private float[] dataaverage = { 2, 3, 5, 4, 0, 5, 1, 4, 6, 3, 5, 8 };
	
	public String execute() {
		return Action.SUCCESS;
	}

	public String getTimeonsite() {
		return timeonsite;
	}

	public void setTimeonsite(String timeonsite) {
		this.timeonsite = timeonsite;
	}

	public float[] getDataaverage() {
		return dataaverage;
	}

	public void setDataaverage(float[] dataaverage) {
		this.dataaverage = dataaverage;
	}
}