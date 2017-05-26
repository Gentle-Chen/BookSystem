package com.zhbit.book.Service;

import java.util.List;

import com.zhbit.book.Domain.Order;


public interface OrderService {

	/*PageBean orderList(int userId, int currentPage);*/

	void orderAdd(String address);

	List myOrderItem(int userId);
	
	/*List myOrderList(int userId);*/

	

	List orderList(int userId);

	List item(int orderId);

	List myOrderList(int userId);

	void deleteOrder(Order order);

	Order findOrder(int orderId);

	public List dealOrder(Order order);
	
	public List getOrder();
}
