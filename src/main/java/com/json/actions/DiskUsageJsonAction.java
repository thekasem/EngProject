package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class DiskUsageJsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8828428015971437011L;

	private String []modules = {"Activity", "Application", "AUM BY CIF", "AUM BY Branch", "Portholding"};
	
	private float[] dataactivity = { 50 };
	private float[] dataapplication = { 30 };
	private float[] dataaumbycif = { 80 };
	private float[] dataaumbybranch = { 900 };
	private float[] dataportholding = { 200 };
	
	public String execute() {
		return Action.SUCCESS;
	}

	public String [] getModules() {
		return modules;
	}

	public void setModules(String [] modules) {
		this.modules = modules;
	}

	public float[] getDataactivity() {
		return dataactivity;
	}

	public void setDataactivity(float[] dataactivity) {
		this.dataactivity = dataactivity;
	}

	public float[] getDataapplication() {
		return dataapplication;
	}

	public void setDataapplication(float[] dataapplication) {
		this.dataapplication = dataapplication;
	}

	public float[] getDataaumbycif() {
		return dataaumbycif;
	}

	public void setDataaumbycif(float[] dataaumbycif) {
		this.dataaumbycif = dataaumbycif;
	}

	public float[] getDataaumbybranch() {
		return dataaumbybranch;
	}

	public void setDataaumbybranch(float[] dataaumbybranch) {
		this.dataaumbybranch = dataaumbybranch;
	}

	public float[] getDataportholding() {
		return dataportholding;
	}

	public void setDataportholding(float[] dataportholding) {
		this.dataportholding = dataportholding;
	}

}