package com.entity.bonanza;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CM_APPICATIONLOG")
public class ApplicationLogMini {

	@Id
	@GeneratedValue
	@Column(name = "EVENTID")
	private int eventId;
	
	@Column(name = "LOGDATE")
	private String logDate;
	
	@Column(name = "LOGTIME")
	private String logTime;
	
	@Column(name ="ACTION")
	private String action;
	
	@Column(name = "LEVEL")
	private String level;
	
	@Column(name = "MODE")
	private String mode;
	
	@Column(name = "CLIENT_IP")
	private String clientIP;
	
	@Column(name = "ENTITY_CLASS")
	private String entityClass;
	
	@Column(name = "FRONT_SERVER_IP")
	private String frontServerIP;
	
	@Column(name = "ACTIVITY_LOG_ID")
	private int activityLogId;
	
	@Column(name = "MEMBERID")
	private String memberId;
	
	@Column(name = "COLUMN_LIST")
	private String columnList;
	
	@Column(name = "PREVIOUS_VALUE")
	private String previousValue;

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getLogDate() {
		return logDate;
	}

	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}

	public String getLogTime() {
		return logTime;
	}

	public void setLogTime(String logTime) {
		this.logTime = logTime;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getClientIP() {
		return clientIP;
	}

	public void setClientIP(String clientIP) {
		this.clientIP = clientIP;
	}

	public String getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(String entityClass) {
		this.entityClass = entityClass;
	}

	public String getFrontServerIP() {
		return frontServerIP;
	}

	public void setFrontServerIP(String frontServerIP) {
		this.frontServerIP = frontServerIP;
	}

	public int getActivityLogId() {
		return activityLogId;
	}

	public void setActivityLogId(int activityLogId) {
		this.activityLogId = activityLogId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getColumnList() {
		return columnList;
	}

	public void setColumnList(String columnList) {
		this.columnList = columnList;
	}

	public String getPreviousValue() {
		return previousValue;
	}

	public void setPreviousValue(String previousValue) {
		this.previousValue = previousValue;
	}
	
}
