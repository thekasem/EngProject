package com.json.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserJsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6309611743864472961L;
	private float[] dataMSIE = { 1.3f, 2.42f, 3.29f, 1.17f, 1.26f, 2.77f, 2.56f };
	private float[] dataFirefox = { 1.33f, 2.15f, 2.22f, 1.27f, 2.76f, 2.32f,
			2.31f, 1.02f };
	private float[] dataChrome = { 3.14f, 5.24f, 8.55f, 8.19f, 2.14f, 8.85f,
			2.53f, 0.38f, 0.6f, 2.96f, 5f, 4.32f, 3.68f, 1.45f };
	private float[] dataSafari = { 2.3f, 0.42f, 4.29f, 2.17f, 0.26f, 0.77f,
			5.56f };
	private float[] dataOpera = { 5.34f, 5.17f, 4.24f, 6.16f };
	private float[] dateProprietary = {};
	private float[] y = { 10.0f, 20.0f, 30.0f, 20.17f, 20.83f, 0.0f };
	private String[] nameBrowser = { "MSIE", "Firefox", "Chrome", "Safari", "Opera" };
	private float result1 = 20.55f;

	public String execute() {
		return Action.SUCCESS;
	}

	public float[] getDataMSIE() {
		return dataMSIE;
	}

	public float[] getY() {
		return y;
	}

	public float getResult1() {
		return result1;
	}

	public float[] getDataFirefox() {
		return dataFirefox;
	}

	public float[] getDataChrome() {
		return dataChrome;
	}

	public float[] getDataSafari() {
		return dataSafari;
	}

	public float[] getDataOpera() {
		return dataOpera;
	}

	public float[] getDateProprietary() {
		return dateProprietary;
	}

	public String[] getNameBrowser() {
		return nameBrowser;
	}


	
}
