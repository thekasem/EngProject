package com.dao.implement;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.HibernateUtil;

public class TestDao {

	public static List<String> getListByDate() {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		List<String> result = null;
		try {
//			Query query = sessionB.createQuery("SELECT DISTINCT browser from ActivityLogMini ");
			Query query = sessionB.createQuery("SELECT  browser from ActivityLogMini where UPPER(browser) LIKE UPPER('%Firefox%')");
			result = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}
	
	public static int getcount() {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		int result = 0;
		try {
//			Query query = sessionB.createQuery("SELECT  browser from ActivityLogMini where UPPER(browser) LIKE UPPER('%chrome%')");
//			result = query.list().size();
			Query query = sessionB.createQuery("SELECT  COUNT(browser) from ActivityLogMini where UPPER(browser) LIKE UPPER('%Firefox 36.0%')");
			result = Integer.parseInt(query.uniqueResult().toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public static void main(String[] args) {
		List<String> list = getListByDate();
		int result = getcount();
		System.out
				.println("++++++++++++++++++++++++++++ test browser ++++++++++++++++++++++++++++++++");
		for (Object te : list) {
			System.out.println(te);
		}
       System.out.println("total count record : "+ result +" record");
	}

}
