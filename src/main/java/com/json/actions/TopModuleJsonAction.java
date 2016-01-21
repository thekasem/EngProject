package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class TopModuleJsonAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4994150963693242934L;
	private String[] month = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
			"Aug", "Sep", "Oct", "Nov", "Dec" };
    private String[] nameModule = {"Archive Activity","Archive AUM","Dashboard","Activity Log","Application Log"};
    private int[] dataModule1 ={8,5,2,1,6,7,8,4,3,7,8,5};
    private int[] dataModule2 ={2,4,8,1,6,7,0,8,3,7,9,8};
    private int[] dataModule3 ={9,5,4,1,6,7,3,8,4,7,5,4};
    private int[] dataModule4 ={6,8,2,1,6,7,2,8,3,4,7,5};
    private int[] dataModule5 ={3,5,2,8,6,7,8,4,8,7,4,8};
	public String execute() {
		return Action.SUCCESS;
	}

	public String[] getMonth() {
		return month;
	}

	public String[] getNameModule() {
		return nameModule;
	}

	public int[] getDataModule1() {
		return dataModule1;
	}

	public int[] getDataModule2() {
		return dataModule2;
	}

	public int[] getDataModule3() {
		return dataModule3;
	}

	public int[] getDataModule4() {
		return dataModule4;
	}

	public int[] getDataModule5() {
		return dataModule5;
	}

}
