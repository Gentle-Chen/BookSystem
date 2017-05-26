package com.zhbit.book.Dao;

import java.util.List;

import com.zhbit.book.Domain.Order;
import com.zhbit.book.Domain.OrderItem;

public interface OrderDao {

	/*int getTotalCount(int userId);

	List<Order> orderList(int begin, int pageSize);*/

	int orderAdd(Order order);

	Order findOrder(int orderId);

	void orderItemAdd(OrderItem orderItem);
	
	List  myOrderItem(int userId);

	/*List myOrderList(int userId);*/

	List orderList(int userId);

	List item(int orderId);

	List myOrderList(int userId);

	void deleteOrder(Order order);

	List dealOrder(Order order);
	
	public List getOrder();

}
