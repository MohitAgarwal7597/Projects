package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Registration {
	@Id
	@Column(length = 50)
	String emailId;
	@Column(length = 32)
	String password;
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	Date registrationDate;
	public Registration(String emailId, String password, Date registrationDate) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.registrationDate = registrationDate;
	}
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

}
