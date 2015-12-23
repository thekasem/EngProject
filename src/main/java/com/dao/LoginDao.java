package com.dao;

import java.util.Arrays;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.entity.HibernateArchiveUtil;
import com.entity.HibernateUtil;
import com.entity.User;

import freemarker.log.Logger;

public class LoginDao {
	private static Logger log = Logger.getLogger(LoginDao.class.getName());

	public static User checkLogin(String user, String password) {
		Session session = HibernateArchiveUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("userName", user));
		criteria.add(Restrictions.eq("password", password));

		User userLogin = (User) criteria.list().get(0);
		log.info(userLogin.toString());

		session.getTransaction().commit();

		return userLogin;
	}

	public static User checkLoginUser(String user, String password) {
		boolean result = false;
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		User userLogin = new User();
		try {
			userLogin = (User) session.createQuery("from User where userName='" + user	+ "' and password = '" + password + "'").list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userLogin;
	}

}
