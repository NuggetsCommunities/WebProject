package com.materials.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author Allen
 * 2017��10��18������11:20:49
 */
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String name;
	private String password;
	private String level;
	private String credit;
	private String LoginName;
	private String mickName;
	private String sex;
	private Date birthDate;
	private String hobbit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getLoginName() {
		return LoginName;
	}
	public void setLoginName(String loginName) {
		LoginName = loginName;
	}
	public String getMickName() {
		return mickName;
	}
	public void setMickName(String mickName) {
		this.mickName = mickName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getHobbit() {
		return hobbit;
	}
	public void setHobbit(String hobbit) {
		this.hobbit = hobbit;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", level=" + level + ", credit="
				+ credit + ", LoginName=" + LoginName + ", mickName=" + mickName + ", sex=" + sex + ", birthDate="
				+ birthDate + ", hobbit=" + hobbit + "]";
	}
	
	
}
