package com.zhbit.book.Domain;

import java.util.HashSet;
import java.util.Set;

public class User {
	private int id;
	private String name;
	private String password;
	private String email;
	private String telphone;
	private String address;
	private Set<Order> setOrder = new HashSet<Order>();

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", telphone=" + telphone + ", email=" + email + ", address=" + address + ","
						+ "setOrder=" + setOrder + "]";
	}

	public Set<Order> getSetOrder() {
		return setOrder;
	}

	public void setSetOrder(Set<Order> setOrder) {
		this.setOrder = setOrder;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
