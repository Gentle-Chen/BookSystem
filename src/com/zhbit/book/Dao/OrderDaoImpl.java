package com.zhbit.book.Dao;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.sql.Update;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zhbit.book.Domain.Order;
import com.zhbit.book.Domain.OrderItem;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {
	@Resource
	private SessionFactory session;
	@SuppressWarnings("all")
	@Override
	public int orderAdd(Order order) {
		int i = 0;
		session.getCurrentSession().persist(order);;
		
		String hql = "select max(orderId) from Order";
		List<Integer> idList =this.getHibernateTemplate().find(hql);
		
		if(idList.size()>0&&idList!=null){
			i = idList.get(0);
		}
		return i;
	}

	@Override
	public Order findOrder(int orderId) {
		Order order = this.getHibernateTemplate().get(Order.class, orderId);
		return order;
	}

	@Override
	public void orderItemAdd(OrderItem orderItem) {
		this.getHibernateTemplate().save(orderItem);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List  myOrderItem(int userId) {
		List list = this.getHibernateTemplate().find("from OrderItem o where o.order.user.id=?",userId);
		return list;
		
	}
	

	@SuppressWarnings("all")
	@Override
	public List orderList(int userId) {		
		List list = this.getHibernateTemplate().find("from OrderItem ol inner join fetch  ol.order  where ol.order.user.id=?",userId);
		return list;
	}

	@SuppressWarnings("all")
	@Override
	public List item(int orderId) {
		List list = this.getHibernateTemplate().find("from OrderItem where order.orderId=?",orderId);
		return list;
	}

	@Override
	public List myOrderList(int userId) {
		return this.getHibernateTemplate().find("from Order where user.id=?", userId);
	}

	@Override
	public void deleteOrder(Order order) {
		this.getHibernateTemplate().delete(order);
	}
	
	public List dealOrder(Order order) {
		String hql = "update Order set isDeal = '1'";
		session.getCurrentSession().createQuery(hql).executeUpdate();
		Query query = session.getCurrentSession().createQuery("from Order");
		List list = query.list();
		HttpServletRequest request = ServletActionContext.getRequest();
		return list;
	}
	
	public List getOrder(){
		Query query = session.getCurrentSession().createQuery("from Order");
		List list = query.list();
		HttpServletRequest request = ServletActionContext.getRequest();
		return list;
	}

}
