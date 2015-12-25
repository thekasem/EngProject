package com.dao.implement;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.dao.interfaces.ILoginDao;
import com.entity.HibernateArchiveUtil;
import com.entity.HibernateUtil;
import com.entity.User;

import freemarker.log.Logger;


public class LoginDao implements ILoginDao {
	private static Logger log = Logger.getLogger(LoginDao.class.getName());

	public  User checkLogin(String user, String password) {
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

	public  User checkLoginUser(String user, String password) {
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
	public List<User> getUser() {
		Session session = HibernateArchiveUtil.getSessionFactory().openSession();
		session.beginTransaction();

		ArrayList<User> list = (ArrayList<User>) session.createQuery("from User").list();
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				System.out.println("User Data : " + list.get(i).getUserId());
				System.out.println("User First Name : "
						+ list.get(i).getFirstName());
				System.out.println("User Last Name : "
						+ list.get(i).getLastName());
				System.out.println("User Gender : " + list.get(i).getGender());
				System.out.println("User City : " + list.get(i).getCity());
			}
		}
		session.getTransaction().commit();
		return list;
	}

}
