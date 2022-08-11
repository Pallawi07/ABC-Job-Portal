package com.abc.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ABC_users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int userid;
	String first_name;
	String last_name;
	String email;
	String userName;
	String password;
	String phone;
	String role;

	public Users() {
		super();
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Users(int userid, String userName, String password, String first_name, String last_name,
			String email, String phone, String role) {
		super();
		this.userid = userid;
		this.userName = userName;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone = phone;
		this.role = role;
	}

	@Override
	public String toString() {
		return "Users [userid=" + userid + ", first_name=" + first_name + ", last_name=" + last_name + ", email="
				+ email + ", userName=" + userName + ", password=" + password + ", phone=" + phone + ", role=" + role
				+ "]";
	}

	public Users(int userid, String first_name, String last_name, String email, String userName, String password,
			String phone) {
		super();
		this.userid = userid;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
	}

}
