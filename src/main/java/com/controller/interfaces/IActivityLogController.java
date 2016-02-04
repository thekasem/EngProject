package com.controller.interfaces;

import java.util.List;


public interface IActivityLogController {
	
	public List<String> getNameBrowsers(String name);
	
	public List<Float> getDataBrowsers(List<String> name, Boolean searchBy);
	
}
