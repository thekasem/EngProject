package com.dao.implement;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.dao.interfaces.IActivityLogDao;
import com.entity.HibernateUtil;
import com.entity.bonanza.ActivityLogMini;

public class ActivityLogDao implements IActivityLogDao {

	public String createCriteriaSearch(ActivityLogMini obj, boolean isOrdering,
			boolean isAscending, boolean isCount) {
		boolean where = true;
		String command = "";
		try {
			if (isCount) {
				command += "SELECT COUNT(*) FROM ActivityLogMini ";
			} else {
				command += "FROM ActivityLogMini ";
			}

			if (obj.getLogDate() != null && !obj.getLogDate().trim().equals("")) {
				if (where) {
					command += " WHERE logDate = '" + obj.getLogDate().trim()
							+ "'";
					where = false;
				}
			}

			if (obj.getLogId() != 0) {
				if (where) {
					command += " WHERE logId = " + obj.getLogId();
					where = false;
				}
			}

			if (obj.getActionClass() != null
					&& !obj.getActionClass().trim().equals("")) {
				if (where) {
					command += " WHERE UPPER(actionClass) LIKE UPPER('%"
							+ obj.getActionClass().toUpperCase().trim() + "%')";
					where = false;

				} else
					command += " AND UPPER(actionClass) LIKE UPPER('%"
							+ obj.getActionClass().toUpperCase().trim() + "%')";
			}

			if (obj.getAction() != null && !obj.getAction().trim().equals("")) {
				if (where) {
					command += " WHERE UPPER(action) LIKE UPPER('%"
							+ obj.getAction().toUpperCase().trim() + "%')";
					where = false;

				} else
					command += " AND UPPER(action) LIKE UPPER('%"
							+ obj.getAction().toUpperCase().trim() + "%')";
			}

			if (obj.getScreencode() != null
					&& !obj.getScreencode().trim().equals("")) {
				if (where) {
					command += " WHERE UPPER(screencode) LIKE UPPER('%"
							+ obj.getScreencode().toUpperCase().trim() + "%')";
					where = false;

				} else
					command += " AND UPPER(screencode) LIKE UPPER('%"
							+ obj.getScreencode().toUpperCase().trim() + "%')";
			}

			if (obj.getScreenname() != null
					&& !obj.getScreenname().trim().equals("")) {
				if (where) {
					command += " WHERE UPPER(screenname) LIKE UPPER('%"
							+ obj.getScreenname().toUpperCase().trim() + "%')";
					where = false;

				} else
					command += " AND UPPER(screenname) LIKE UPPER('%"
							+ obj.getScreenname().toUpperCase().trim() + "%')";
			}

			if (obj.getClientIP() != null
					&& !obj.getClientIP().trim().equals("")) {
				if (where) {
					command += " WHERE UPPER(clientIP) LIKE UPPER('%"
							+ obj.getClientIP().toUpperCase().trim() + "%')";
					where = false;

				} else
					command += " AND UPPER(clientIP) LIKE UPPER('%"
							+ obj.getClientIP().toUpperCase().trim() + "%')";
			}

			if (!isCount) {
				if (isOrdering) {
					if (isAscending)
						command += " ORDER BY logDate ASC , logId ASC ";
					else
						command += " ORDER BY logDate DESC , logId DESC ";
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return command;
	}

	public List<ActivityLogMini> getListByCriteriaSearch(
			ActivityLogMini criteriaSearch, boolean isOrdering,
			boolean isAscending, int firstResult, int maxResult) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		List<ActivityLogMini> result = null;
		try {
			Query query = sessionB.createQuery(createCriteriaSearch(
					criteriaSearch, isOrdering, isAscending, false));
			query.setFirstResult(firstResult);
			query.setMaxResults(maxResult);

			result = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public int getCountByCriteriaSearch(ActivityLogMini criteriaSearch) {
		int result = 0;
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		try {
			Query query = sessionB.createQuery(createCriteriaSearch(
					criteriaSearch, false, false, true));
			result = Integer.parseInt(query.uniqueResult().toString());
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}
		sessionB.getTransaction().commit();
		return result;
	}

	public ActivityLogMini getObjectById(int eventId) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		ActivityLogMini activityLogMini = new ActivityLogMini();
		sessionB.load(activityLogMini, eventId);
		sessionB.getTransaction().commit();
		return activityLogMini;
	}

	public void save(ActivityLogMini entity) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		sessionB.save(entity);
		sessionB.getTransaction().commit();
		
	}

	public void delete(ActivityLogMini entity) {
		Session sessionB = HibernateUtil.getSessionFactory().openSession();
		sessionB.beginTransaction();
		sessionB.delete(entity);
		sessionB.getTransaction().commit();
		
	}

	
	
}
