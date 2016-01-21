package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginJsonAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4937366360808612638L;
	private int[] numberarray1 = { 0, 24357, 12144, 0, 0, 6, 11, 32, 110, 235, 369,
			640, 1005, 1436, 2063, 3057, 4618, 6444, 9822, 15468, 20434, 24126,
			27387, 29459, 31056, 31982, 32040, 31233, 29224, 27342, 26662,
			26956, 27912, 28999, 28965, 27826, 25579, 25722, 24826, 24605,
			24304, 23464, 23708, 24099, 24357, 10000, 24401, 24344, 23586,
			22380, 21004, 17287, 14747, 13076, 12555, 12144, 11009, 10950,
			10871, 10824, 10577, 10527 };
	private int[] numberarray2 = { 0, 0, 0, 0, 0, 6, 10, 30, 110, 230, 360,
			640, 1005, 1436, 2063, 3057, 4618, 6444, 9822, 15468, 20434, 24126,
			27300, 29400, 31000, 31900, 32000, 31200, 29200, 27300, 26600,
			26900, 27900, 28900, 28900, 27826, 25500, 25700, 24800, 24600,
			24300, 23400, 23708, 2005, 2009, 10000, 24401, 24344, 23500,
			22380, 21004, 17287, 14647, 13076, 10, 0, 0, 0,
			10871, 10824, 10577, 10527 };
	
	private String text1 ="name test1";
	private String text2 = "name test2";

	public String execute() {
		return Action.SUCCESS;
	}

	public int[] getNumberarray1() {
		return numberarray1;
	}

	public void setNumberarray1(int[] numberarray1) {
		this.numberarray1 = numberarray1;
	}

	public int[] getNumberarray2() {
		return numberarray2;
	}

	public void setNumberarray2(int[] numberarray2) {
		this.numberarray2 = numberarray2;
	}

	public String getText1() {
		return text1;
	}

	public void setText1(String text1) {
		this.text1 = text1;
	}

	public String getText2() {
		return text2;
	}

	public void setText2(String text2) {
		this.text2 = text2;
	}

}
