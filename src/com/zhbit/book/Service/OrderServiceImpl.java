package com.zhbit.book.Service;

import java.awt.event.ItemListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

//import com.sun.jmx.snmp.Timestamp;




import com.zhbit.book.Dao.OrderDao;
import com.zhbit.book.Domain.Book;
import com.zhbit.book.Domain.Order;
import com.zhbit.book.Domain.OrderItem;
import com.zhbit.book.Domain.User;

@Transactional
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderDao orderDao;


	@SuppressWarnings("all")
	@Override
	public void orderAdd(String address) {		
		HttpSession session = ServletActionContext.getRequest().getSession();
		List<Book> shoppingBook = (List<Book>)session.getAttribute("shoppingBook");
		double totalMoney =(Double)session.getAttribute("totalMoney");
		User user = (User)session.getAttribute("user");
		Order order = new Order();
		order.setAddress(address);
		order.setUser(user);
		Date date=new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String time=format1.format(date);
		order.setOrderTime(time);
		order.setIsDeal("0");
		order.setTotal(totalMoney);
		String orderNumber = "DDBH";
		DateFormat format = new SimpleDateFormat("yyMMddHHmmss");
		String formatDate = format.format(new Date());
		int random = new Random().nextInt(100000);
		orderNumber += formatDate+random;
		order.setOrderNumber(orderNumber);
		int orderId = orderDao.orderAdd(order);
		Order newOrder = orderDao.findOrder(orderId);
		for(Book book:shoppingBook){
			OrderItem orderItem = new OrderItem();
			orderItem.setBook(book);
			orderItem.setQuantity(book.getNumber());
			orderItem.setOrder(newOrder);
			orderDao.orderItemAdd(orderItem);
		}
		session.removeAttribute("shoppingBook");
		session.removeAttribute("totalMoney");
	}
	
	@Override
	public List  myOrderItem(int userId) {
		return orderDao.myOrderItem(userId);
	}


	

	@SuppressWarnings("all")
	@Override
	public List orderList(int userId) {
		List<Order> order = orderDao.orderList(userId);
		return order;
	}

	@Override
	public List item(int orderId) {
		List list = orderDao.item(orderId);
		return list;
	}

	@Override
	public List myOrderList(int userId) {
		return orderDao.myOrderList(userId);
	}

	@Override
	public void deleteOrder(Order order) {
		orderDao.deleteOrder(order);
	}

	@Override
	public Order findOrder(int orderId) {
		return orderDao.findOrder(orderId);
	}

	public List dealOrder(Order order){
		return orderDao.dealOrder(order);
	}
	
	public List getOrder(){
		return orderDao.getOrder();
	}
}
