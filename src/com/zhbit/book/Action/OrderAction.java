package com.zhbit.book.Action;


import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.book.Domain.Book;
import com.zhbit.book.Domain.Order;
import com.zhbit.book.Domain.OrderItem;
import com.zhbit.book.Domain.User;
import com.zhbit.book.Service.OrderService;

public class OrderAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private OrderService orderService;

	private String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@SuppressWarnings("all")
	public String orderAdd() {
		orderService.orderAdd(address);
		return "orderAdd";
	}

	
	@SuppressWarnings("all")
	public String myOrderList() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user");
		int userId = user.getId();
		List list = orderService.myOrderList(userId);
		ServletActionContext.getRequest().setAttribute("list", list);
		return "myOrderList";
	}


	@SuppressWarnings("all")
	public String myOrderItem() {
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user");
		int userId = user.getId();		
		List<OrderItem>  list2 = orderService.orderList(userId);
		
		for (int i = 0; i < list2.size(); i++) {
			OrderItem orderItem = list2.get(i);
			Set<OrderItem> set = orderItem.getOrder().getSetOrderItems();
			
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("set", set);
			
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list2);

		return "myOrderItem";
	}
	
	
	public String deleteOrder(){
		int orderId = this.orderId;
		 Order order = orderService.findOrder(orderId);
		orderService.deleteOrder(order);
		
		return "deleteOrder";
	}

	private int orderId;
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String item(){
		
		int orderId = this.orderId;
		List item = orderService.item(orderId);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("item", item);
		return "item";
	}
	
	public String dealOrder(){
		int orderId = this.orderId;
		Order order = orderService.findOrder(orderId);
		HttpServletRequest request = ServletActionContext.getRequest();
		List list = orderService.dealOrder(order);
		return "dealOrder";
	}
	
	public String getOrder(){
		HttpServletRequest request = ServletActionContext.getRequest();
		List list = orderService.getOrder();
		request.setAttribute("list", list);
		return "getOrder";
	}

}
