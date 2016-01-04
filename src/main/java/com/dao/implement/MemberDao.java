package com.dao.implement;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.dao.interfaces.IMemberDao;
import com.entity.HibernateUtil;
import com.entity.bonanza.MemberMini;

public class MemberDao implements IMemberDao{

	public String createCriteriaSearch(MemberMini obj, boolean isOrdering,
			boolean isAscending, boolean isCount) {
		boolean where = true;
		String command = "";
		try {
			if (isCount) {
				command += "SELECT COUNT(*) FROM MemberMini ";
			}else {
				command += "FROM MemberMini";
			}
			if (obj.getMemberId() != 0) {
				if (where) {
					command += "WHERE memberId = "+ obj.getMemberId();
					where= false;
				}
			}
			if (obj.getFirstNameEn() != null && obj.getFirstNameEn().trim().equals("")) {
				if (where) {
					command += "WHERE UPPER(firstNameEn) LIKE UPPER('%"+obj.getFirstNameEn().toUpperCase().trim()+"%')";
					where = false;
				}else {
					command += "AND UPPER(firstNameEn) LIKE UPPER('%"+obj.getFirstNameEn().toUpperCase().trim()+"%')";
				}
			}
			
			if (!isCount) {
				if (isOrdering) {
					if (isAscending)
						command += " ORDER BY memberId ASC ";
					else
						command += " ORDER BY memberId DESC ";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return command;
	}

	public List<MemberMini> getListByCriteriaSearch(MemberMini criteriaSearch,
			boolean isOrdering, boolean isAscending, int firstResult,
			int maxResult) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		List<MemberMini> result = null;
		try {
			Query query = sessionB.createQuery(createCriteriaSearch(criteriaSearch, isOrdering, isAscending, false));
			query.setFirstResult(firstResult);
			query.setMaxResults(maxResult);
			result = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public int getCountByCriteriaSearch(MemberMini criteriaSearch) {
		int result = 0;
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		try {
			Query query = sessionB.createQuery(createCriteriaSearch(criteriaSearch, false, false, true));
			result = Integer.parseInt(query.uniqueResult().toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public MemberMini getObjectById(int eventId) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		MemberMini memberMini = new MemberMini();
		sessionB.load(memberMini, eventId);
		sessionB.getTransaction().commit();
		return memberMini;
	}

	public void save(MemberMini entity) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		sessionB.save(entity);
		sessionB.getTransaction().commit();
	}

	public void delete(MemberMini entity) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		sessionB.delete(entity);
		sessionB.getTransaction().commit();
	}

}