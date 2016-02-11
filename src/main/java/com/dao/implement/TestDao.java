package com.dao.implement;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.HibernateUtil;

public class TestDao {

	public static List<Integer> getListByDate() {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		List<Integer> result = null;
		try {
//			Query query = sessionB.createQuery("SELECT DISTINCT browser from ActivityLogMini ");
			Query query = sessionB.createQuery("select count(createDate)  from BranchCustomerMini where createDate between '20140106' and '20140106' group by createDate ");
//			query.setFirstResult(0);
//			query.setMaxResults(5);
			result = (List<Integer>) query.list();
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
			Query query = sessionB.createQuery("select count(createDate)  from BranchCustomerMini where createDate between '20140106' and '20140106'");
			result = Integer.parseInt(query.uniqueResult().toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public static void main(String[] args) {
		List<Integer> list = getListByDate();
		int result = getcount();
		System.out
				.println("++++++++++++++++++++++++++++ test browser ++++++++++++++++++++++++++++++++");
		System.out.println("count list : " + list.size());
		for (Object te : list) {
			System.out.println(te);
		}
       System.out.println("total count record : "+ result +" record");
		
	}

}
