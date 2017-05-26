package com.zhbit.book.Domain;

import java.util.HashSet;
import java.util.Set;

public class Seller
{
	private int id;
	private String name;
	private String password;
	private String email;
	private String telphone;
	private String address;
	private Set<Order> setOrder = new HashSet<Order>();
	
	public Set<Order> getSetOrder() {
		return setOrder;
	}
	public void setSetOrder(Set<Order> setOrder) {
		this.setOrder = setOrder;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	
	public String getName() 
	{
		return name;
	}
	public String getPassword()
	{
		return password;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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

