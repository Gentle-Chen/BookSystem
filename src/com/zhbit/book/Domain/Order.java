package com.zhbit.book.Domain;

import java.util.HashSet;
import java.util.Set;

//import com.sun.jmx.snmp.Timestamp;

public class Order {
	private int orderId;
	private String orderNumber;// 璁㈠崟缂栧彿
	private String orderTime;// 涓嬪崟鏃堕棿
	private double total;// 鎬昏�?
	private String isDeal;// 璁㈠崟鐘舵�
	private String address;// �?��揣鍦板潃
	private User user;// 璁㈠崟鐨勬墍鏈夎�?

	private Set<OrderItem> setOrderItems = new HashSet<OrderItem>();

	public Set<OrderItem> getSetOrderItems() {
		return setOrderItems;
	}

	public void setSetOrderItems(Set<OrderItem> setOrderItems) {
		this.setOrderItems = setOrderItems;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	
	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getIsDeal() {
		return isDeal;
	}

	public void setIsDeal(String isDeal) {
		this.isDeal = isDeal;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
