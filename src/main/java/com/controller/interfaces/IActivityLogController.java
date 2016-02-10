package com.controller.interfaces;

import java.util.List;


public interface IActivityLogController {
	
	public List<String> getNameBrowsers(String name,String year);
	
	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy,String year);
	
	public List<Integer> getDataAction(String name, String year);
	
	public List<String> getNameAction(String year);
	
}
