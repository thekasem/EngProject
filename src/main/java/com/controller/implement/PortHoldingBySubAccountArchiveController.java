package com.controller.implement;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.controller.interfaces.IPortHoldingBySubAccountArchiveCotroller;
import com.dao.interfaces.IPortHoldingBySubAccountArchiveDao;
import com.dao.interfaces.IPortHoldingBySubAccountDao;
import com.entity.HibernateArchiveUtil;
import com.entity.archive.ArchivePortHoldingBySubAccountMini;
import com.entity.bonanza.PortHoldingBySubAccountMini;

public class PortHoldingBySubAccountArchiveController implements IPortHoldingBySubAccountArchiveCotroller {
	
	IPortHoldingBySubAccountArchiveDao portHoldingBySubAccountArchiveDao;
	IPortHoldingBySubAccountDao portHoldingBySubAccountDao;

	
	public IPortHoldingBySubAccountArchiveDao getPortHoldingBySubAccountArchiveDao() {
		return portHoldingBySubAccountArchiveDao;
	}

	public void setPortHoldingBySubAccountArchiveDao(
			IPortHoldingBySubAccountArchiveDao portHoldingBySubAccountArchiveDao) {
		this.portHoldingBySubAccountArchiveDao = portHoldingBySubAccountArchiveDao;
	}

	public IPortHoldingBySubAccountDao getPortHoldingBySubAccountDao() {
		return portHoldingBySubAccountDao;
	}

	public void setPortHoldingBySubAccountDao(
			IPortHoldingBySubAccountDao portHoldingBySubAccountDao) {
		this.portHoldingBySubAccountDao = portHoldingBySubAccountDao;
	}

	public int getCount(ArchivePortHoldingBySubAccountMini criteriaSearch) {
		return portHoldingBySubAccountArchiveDao.getCountByCriteriaSearch(criteriaSearch);
	}

	public List<ArchivePortHoldingBySubAccountMini> getList(
			ArchivePortHoldingBySubAccountMini criteriaSearch,
			Boolean isOrdering, Boolean isAscending, Integer firstResult,
			Integer maxResult) {
		return portHoldingBySubAccountArchiveDao.getListByCriteriaSearch(criteriaSearch, isOrdering, isAscending, firstResult, maxResult);
	}

	public ArchivePortHoldingBySubAccountMini getObjectById(int eventId) {
		return portHoldingBySubAccountArchiveDao.getObjectById(eventId);
	}

	public void addArchive(String date, String condition) {
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		List<PortHoldingBySubAccountMini> listB;
		String dateToday = dateFormat.format(new Date());
		HttpSession session = ServletActionContext.getRequest().getSession();
		Session sessionA = HibernateArchiveUtil.getSessionFactory().openSession();
		sessionA.beginTransaction();
		try {
			do {
				listB = portHoldingBySubAccountDao.getListByDate(date, condition);
				for(PortHoldingBySubAccountMini entityB: listB){
					ArchivePortHoldingBySubAccountMini entityA = new ArchivePortHoldingBySubAccountMini();
					BeanUtils.copyProperties(entityA, entityB);
					entityA.setDateArchive(dateToday);
					entityA.setConditionArchive("Date "+condition+" "+date);
					entityA.setUserArchive((String)session.getAttribute("user"));
					portHoldingBySubAccountArchiveDao.save(entityA);
					portHoldingBySubAccountDao.delete(entityB);
				}
			} while (listB==null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sessionA.getTransaction().commit();
	}

}