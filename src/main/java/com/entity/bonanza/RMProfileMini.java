package com.entity.bonanza;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RM_PROFILE")
public class RMProfileMini {
	
	@Id
	@GeneratedValue
	@Column(name = "RMID")
	private int rmId;
	
	@Column(name = "RMCODE")
	private String rmCode;
	
	@Column(name = "FIRSTNAMEEN")
	private String firstNameEn;
	
	@Column(name = "LASTNAMEEN")
	private String lastNameEn;
	
	@Column(name = "FIRSTNAME")
	private String firstName;
	
	@Column(name = "LASTNAME")
	private String lastName;

	@Column(name = "NICKNAME")
	private String nickName;
	
	@Column(name = "GENDER")
	private char gender;
	
	@Column(name = "JOINSINCE")
	private char joinSince;
	
	@Column(name = "STATUS")
	private char status;
	
	@Column(name = "DATEOFBIRTH")
	private String dateOfBirth;
	
	@Column(name = "IS_RMCENTER")
	private String is_rmCenter;
	
	@Column(name = "CAN_MANAGE_PERSONAL")
	private String can_manage_personal;
	
	@Column(name ="CAN_MANAGE_COPORATE")
	private String can_manage_coporate;
	
	@Column(name = "COUNTOFBIRTHID")
	private int countOfBirthId;
	
	@Column(name = "NATIONALITYID")
	private int nationalityId;
	
	@Column(name = "RELIGIONID")
	private int religionId;
	
	@Column(name = "MARITALSTATUS")
	private char maritalStatus;
	
	@Column(name = "EDUCATIONID")
	private int educationId;
	
	@Column(name = "RMHAEDERID")
	private int rmHeaderId;
	
	@Column(name = "EXPIREID")
	private int expireId;
	
	@Column(name = "PERSONALITYID")
	private int personalityId;
	
	@Column(name = "LANGUAGEID")
	private int languageId;
	
	@Column(name = "CONTACTNUMBER")
	private String contactNumber;
	
	@Column(name = "MOBILEPHONE")
	private String mobilephone;
	
	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "ADDRESS")
	private String address;
	
	@Column(name = "TOMBOLID")
	private int tombolId;
	
	@Column(name = "AMPORID")
	private int amporId;
	
	@Column(name = "PROVINCEID")
	private int provinceId;
	
	@Column(name = "COUNTRYID")
	private int countryId;
	
	@Column(name = "ZIPCODE")
	private String zipCode;
	
	@Column(name = "TELEPHONE")
	private String telephone;
	
	@Column(name = "FAX")
	private String fax;
	
	@Column(name = "BRANCHID")
	private int branchId;
	
	@Column(name = "POSITIONID")
	private int positionId;
	
	@Column(name = "CREATEDATE")
	private String createDate;
	
	@Column(name = "CREATETIME")
	private String createTime;
	
	@Column(name = "CREATEBY")
	private int createBy;
	
	@Column(name = "CREATEBYNAME")
	private String createByName;
	
	@Column(name = "LASTUPDATEDATE")
	private String lastUpdateDate;
	
	@Column(name = "LASTUPDATETIME")
	private String lastUpdateTime;
	
	@Column(name = "LASTUPDATEBY")
	private int lastUpdateBy;
	
	@Column(name = "LISTENINGLEVEL")
	private int listeningLevel;
	
	@Column(name = "SPEAKINGLEVEL")
	private int speakingLevel;
	
	@Column(name = "READINGLEVEL")
	private int readingLevel;
	
	@Column(name = "RMTYPE")
	private int rmType;
	
	@Column(name = "RMPROSITIONID")
	private int rmPrositionId;
	
	@Column(name = "RMAPID")
	private int reAPId;

	public int getRmId() {
		return rmId;
	}

	public void setRmId(int rmId) {
		this.rmId = rmId;
	}

	public String getRmCode() {
		return rmCode;
	}

	public void setRmCode(String rmCode) {
		this.rmCode = rmCode;
	}

	public String getFirstNameEn() {
		return firstNameEn;
	}

	public void setFirstNameEn(String firstNameEn) {
		this.firstNameEn = firstNameEn;
	}

	public String getLastNameEn() {
		return lastNameEn;
	}

	public void setLastNameEn(String lastNameEn) {
		this.lastNameEn = lastNameEn;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public char getJoinSince() {
		return joinSince;
	}

	public void setJoinSince(char joinSince) {
		this.joinSince = joinSince;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getIs_rmCenter() {
		return is_rmCenter;
	}

	public void setIs_rmCenter(String is_rmCenter) {
		this.is_rmCenter = is_rmCenter;
	}

	public String getCan_manage_personal() {
		return can_manage_personal;
	}

	public void setCan_manage_personal(String can_manage_personal) {
		this.can_manage_personal = can_manage_personal;
	}

	public String getCan_manage_coporate() {
		return can_manage_coporate;
	}

	public void setCan_manage_coporate(String can_manage_coporate) {
		this.can_manage_coporate = can_manage_coporate;
	}

	public int getCountOfBirthId() {
		return countOfBirthId;
	}

	public void setCountOfBirthId(int countOfBirthId) {
		this.countOfBirthId = countOfBirthId;
	}

	public int getNationalityId() {
		return nationalityId;
	}

	public void setNationalityId(int nationalityId) {
		this.nationalityId = nationalityId;
	}

	public int getReligionId() {
		return religionId;
	}

	public void setReligionId(int religionId) {
		this.religionId = religionId;
	}

	public char getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(char maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public int getEducationId() {
		return educationId;
	}

	public void setEducationId(int educationId) {
		this.educationId = educationId;
	}

	public int getRmHeaderId() {
		return rmHeaderId;
	}

	public void setRmHeaderId(int rmHeaderId) {
		this.rmHeaderId = rmHeaderId;
	}

	public int getExpireId() {
		return expireId;
	}

	public void setExpireId(int expireId) {
		this.expireId = expireId;
	}

	public int getPersonalityId() {
		return personalityId;
	}

	public void setPersonalityId(int personalityId) {
		this.personalityId = personalityId;
	}

	public int getLanguageId() {
		return languageId;
	}

	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getMobilephone() {
		return mobilephone;
	}

	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getTombolId() {
		return tombolId;
	}

	public void setTombolId(int tombolId) {
		this.tombolId = tombolId;
	}

	public int getAmporId() {
		return amporId;
	}

	public void setAmporId(int amporId) {
		this.amporId = amporId;
	}

	public int getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}

	public int getCountryId() {
		return countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public int getPositionId() {
		return positionId;
	}

	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public int getCreateBy() {
		return createBy;
	}

	public void setCreateBy(int createBy) {
		this.createBy = createBy;
	}

	public String getCreateByName() {
		return createByName;
	}

	public void setCreateByName(String createByName) {
		this.createByName = createByName;
	}

	public String getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(String lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public String getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(String lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public int getLastUpdateBy() {
		return lastUpdateBy;
	}

	public void setLastUpdateBy(int lastUpdateBy) {
		this.lastUpdateBy = lastUpdateBy;
	}

	public int getListeningLevel() {
		return listeningLevel;
	}

	public void setListeningLevel(int listeningLevel) {
		this.listeningLevel = listeningLevel;
	}

	public int getSpeakingLevel() {
		return speakingLevel;
	}

	public void setSpeakingLevel(int speakingLevel) {
		this.speakingLevel = speakingLevel;
	}

	public int getReadingLevel() {
		return readingLevel;
	}

	public void setReadingLevel(int readingLevel) {
		this.readingLevel = readingLevel;
	}

	public int getRmType() {
		return rmType;
	}

	public void setRmType(int rmType) {
		this.rmType = rmType;
	}

	public int getRmPrositionId() {
		return rmPrositionId;
	}

	public void setRmPrositionId(int rmPrositionId) {
		this.rmPrositionId = rmPrositionId;
	}

	public int getReAPId() {
		return reAPId;
	}

	public void setReAPId(int reAPId) {
		this.reAPId = reAPId;
	}
	
	
		

}
