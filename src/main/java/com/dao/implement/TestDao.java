package com.dao.implement;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entity.HibernateUtil;

public class TestDao {

	public static List<Object[]> getListByDate() {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		List<Object[]> result = null;
		try {
//			Query query = sessionB.createQuery("SELECT DISTINCT browser from ActivityLogMini ");   //select  sum(usigTime), memberId  from ActivityLogMini where logDate between '20150101' and '20150131' and memberId =1 Group by logDate, memberId 
			Query query = sessionB.createQuery("select  sum(usigTime), memberId  from ActivityLogMini where logDate between '20150101' and '20151231' Group by memberId order by sum(usigTime) desc  ");
			query.setFirstResult(0);
			query.setMaxResults(10);
			result = (List<Object[]>) query.list();
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
		List<Object[]> list = getListByDate();
		int result = getcount();
		Object[] test4 = getListByDate().get(1);
		int test5 = (Integer) test4[1];
		System.out.println("test value " + test5 +" "+ test4[0]);
		System.out
				.println("++++++++++++++++++++++++++++ test browser ++++++++++++++++++++++++++++++++");
		System.out.println("count list : " + list.size());
		float i = 0;
		for (Object[] te : list) {
			System.out.println(te[0] + " "+ te[1]);
			i = i + Integer.parseInt(te[0].toString());
		}
		float results = i / Float.parseFloat(list.size()+"");
		System.out.println("\n average time is : "+ results);
       System.out.println("total count record : "+ result +" record");
		
	}

}
