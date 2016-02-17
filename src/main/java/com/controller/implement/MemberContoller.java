package com.controller.implement;

import java.util.ArrayList;
import java.util.List;

import com.controller.interfaces.IMemberController;
import com.dao.interfaces.IMemberDao;

public class MemberContoller implements IMemberController {

	IMemberDao memberDao;

	public IMemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(IMemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public int countAllByYear(String year) {
		return (int) memberDao.getNewUser(year, true);
	}

	private String yearAndMonth(String year, int month) {
		String result = "";
		if (month < 10) {
			result = year + "0" + Integer.toString(month);
		} else {
			result = year + Integer.toString(month);
		}
		return result;
	}

	private float average(String year, int i) {
		float count = memberDao.getNewUser(yearAndMonth(year, i), false);
		float countAllByYear = memberDao.getNewUser(year, true);
		float result = 0;
		if (count != 0 && countAllByYear != 0) {
			result = (count / countAllByYear) * 100;
		}
		return result;
	}

	public List<Float> getListAverageNewUser(String year) {
		List<Float> result = new ArrayList<Float>();
		for (int i = 1; i <= 12; i++) {
			result.add(average(year, i));
		}
		return result;
	}

	public List<String> getListYear() {
		return memberDao.getListYear();
	}

	public List<Float> getAverage(String year) {
		List<Float> result = new ArrayList<Float>();
		for (int i = 1; i <= 12; i++) {
			float count = memberDao.getNewUser(yearAndMonth(year, i), false);
			float count_1 = memberDao.getNewUser(
					yearAndMonth((Integer.parseInt(year) - 1) + "", i), false);
			float countAllByYear = memberDao.getNewUser(year, true);
			float average = (((count + count_1) / 2)/countAllByYear)*100;
			result.add(average);
		}
		return result;
	}

}
