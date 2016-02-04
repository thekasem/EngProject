package com.json.actions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contact.action.ContactActivityLog;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserJsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6309611743864472961L;
	private ContactActivityLog Controller;
	private List<Float> dataMSIE = new ArrayList<Float>();
	private List<String> nameMSIEVersions = new ArrayList<String>();
	private List<Float> dataFirefox = new ArrayList<Float>();
	private List<String> nameFirefoxVersions = new ArrayList<String>();
	private List<Float> dataChrome = new ArrayList<Float>();
	private List<String> nameChromeVersions = new ArrayList<String>();
	private List<Float> dataSafari = new ArrayList<Float>();
	private List<String> nameSafariVersions = new ArrayList<String>();;
	private List<Float> dataOpera = new ArrayList<Float>();
	private List<String> nameOparaVersions = new ArrayList<String>();;
	private List<Float> dateProprietary = new ArrayList<Float>();
	private List<Float> y = new ArrayList<Float>();
	private String[] nameBrowser = { "Internet Explorer", "Firefox", "Chrome", "Safari",
			"Opera" };

	public void ContactController() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"SpringBeans.xml");
		Controller = (ContactActivityLog) context.getBean("activitylog");
	}

	public String execute() {
		ContactController();
		nameMSIEVersions = Controller.getNameBrowsers(nameBrowser[0]);
		nameFirefoxVersions = Controller.getNameBrowsers(nameBrowser[1]);
		nameChromeVersions = Controller.getNameBrowsers(nameBrowser[2]);
		nameSafariVersions = Controller.getNameBrowsers(nameBrowser[3]);
		nameOparaVersions = Controller.getNameBrowsers(nameBrowser[4]);
		
		dataMSIE = Controller.getDataBrowsers(nameMSIEVersions,false);
		dataFirefox = Controller.getDataBrowsers(nameFirefoxVersions,false);
		dataChrome = Controller.getDataBrowsers(nameChromeVersions,false);
		dataSafari = Controller.getDataBrowsers(nameSafariVersions,false);
		dataOpera = Controller.getDataBrowsers(nameOparaVersions,false);
		
		y = Controller.getDataBrowsers(Arrays.asList(nameBrowser),true);
		return Action.SUCCESS;
	}

	public List<Float> getDataMSIE() {
		return dataMSIE;
	}

	public List<String> getNameMSIEVersions() {
		return nameMSIEVersions;
	}

	public List<Float> getDataFirefox() {
		return dataFirefox;
	}

	public List<String> getNameFirefoxVersions() {
		return nameFirefoxVersions;
	}

	public List<Float> getDataChrome() {
		return dataChrome;
	}

	public List<String> getNameChromeVersions() {
		return nameChromeVersions;
	}

	public List<Float> getDataSafari() {
		return dataSafari;
	}

	public List<String> getNameSafariVersions() {
		return nameSafariVersions;
	}

	public List<Float> getDataOpera() {
		return dataOpera;
	}

	public List<String> getNameOparaVersions() {
		return nameOparaVersions;
	}

	public List<Float> getDateProprietary() {
		return dateProprietary;
	}

	public List<Float> getY() {
		return y;
	}

	public String[] getNameBrowser() {
		return nameBrowser;
	}

}
