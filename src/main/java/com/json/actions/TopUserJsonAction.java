package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class TopUserJsonAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8038905110598528714L;

	private String []user = { "Sanarita", "Onorio", "Narashit", "Junwan", "Ingann", "Onnamon", "Torit", "Shaiwat", "Wuttawat", "Rutpom"};
	
	private float[] datauser1 = { 502, 635, 809, 947, 1402, 3634, 5268, 142, 456, 789, 1230, 4561 };
	private float[] datauser2 = { 106, 107, 111, 133, 221, 767, 1766, 234, 6575, 8653, 3421, 452 };
	private float[] datauser3 = { 163, 203, 276, 408, 547, 729, 628, 67, 876, 986, 654, 46 };
	private float[] datauser4 = { 18, 31, 54, 156, 339, 818, 1201, 52, 765, 73, 759, 545 };
	private float[] datauser5 = { 2, 2, 2, 6, 13, 30, 46, 73, 35, 52, 532, 535 };
	private float[] datauser6 = { 3, 4, 7, 8, 10, 40, 60, 234, 654, 987, 45, 343 };
	private float[] datauser7 = { 100, 200, 300, 400, 500, 700, 600, 767, 895, 486, 980, 865 };
	private float[] datauser8 = { 600, 500, 576, 523, 201, 200, 320, 54, 978, 78, 43, 56 };
	private float[] datauser9 = { 200, 400, 800, 900, 600, 300, 400, 23, 342, 466, 678, 685 };
	private float[] datauser10 = { 400, 213, 223, 426, 825, 233, 240, 435, 345, 76, 43, 76 };
	
	private String []sex = { "male", "female" };
	
	public String execute() {
		return Action.SUCCESS;
	}

	public String [] getUser() {
		return user;
	}

	public void setUser(String [] user) {
		this.user = user;
	}

	public String [] getSex() {
		return sex;
	}

	public void setSex(String [] sex) {
		this.sex = sex;
	}

	public float[] getDatauser1() {
		return datauser1;
	}

	public void setDatauser1(float[] datauser1) {
		this.datauser1 = datauser1;
	}

	public float[] getDatauser2() {
		return datauser2;
	}

	public void setDatauser2(float[] datauser2) {
		this.datauser2 = datauser2;
	}

	public float[] getDatauser3() {
		return datauser3;
	}

	public void setDatauser3(float[] datauser3) {
		this.datauser3 = datauser3;
	}

	public float[] getDatauser4() {
		return datauser4;
	}

	public void setDatauser4(float[] datauser4) {
		this.datauser4 = datauser4;
	}

	public float[] getDatauser5() {
		return datauser5;
	}

	public void setDatauser5(float[] datauser5) {
		this.datauser5 = datauser5;
	}

	public float[] getDatauser6() {
		return datauser6;
	}

	public void setDatauser6(float[] datauser6) {
		this.datauser6 = datauser6;
	}

	public float[] getDatauser7() {
		return datauser7;
	}

	public void setDatauser7(float[] datauser7) {
		this.datauser7 = datauser7;
	}

	public float[] getDatauser8() {
		return datauser8;
	}

	public void setDatauser8(float[] datauser8) {
		this.datauser8 = datauser8;
	}

	public float[] getDatauser9() {
		return datauser9;
	}

	public void setDatauser9(float[] datauser9) {
		this.datauser9 = datauser9;
	}

	public float[] getDatauser10() {
		return datauser10;
	}

	public void setDatauser10(float[] datauser10) {
		this.datauser10 = datauser10;
	}
}