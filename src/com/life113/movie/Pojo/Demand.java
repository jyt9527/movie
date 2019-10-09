package com.life113.movie.Pojo;

import java.util.Date;

public class Demand {
	private int id;
	private String userName;
	private String userDemand;
	private Date date;

	public Demand() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserDemand() {
		return userDemand;
	}

	public void setUserDemand(String userDemand) {
		this.userDemand = userDemand;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
