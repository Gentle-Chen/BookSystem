package com.zhbit.book.Dao;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zhbit.book.Domain.*;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	@Resource
	private SessionFactory session;
	
	@Override
	@SuppressWarnings("all")
	//买家、卖家的登陆验证
	public User login(User user) {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<User> list = this.getHibernateTemplate().find("from User where name=?and password=?",user.getName(),user.getPassword());
		if(list != null && list.size()>0){
			User u = list.get(0);
			return u;
		}
		request.setAttribute("user",user.getName());
		return user;
	}
	public Seller login(Seller seller) {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Seller> list = this.getHibernateTemplate().find("from Seller where name=?and password=?",seller.getName(),seller.getPassword());
		if(list != null && list.size()>0){
			Seller s = list.get(0);
			return s;
		}
		request.setAttribute("seller",seller.getName());
		return seller;
	}

	//买家、卖家的注册
	public User regist(User user)
	{
		try{
		session.getCurrentSession().persist(user);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			session.close();
		}
		return user;
	}
	public Seller regist(Seller seller)
	{
		try{
		session.getCurrentSession().persist(seller);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			session.close();
		}
		return seller;
	}
	
	//显示买家卖家个人信息
	public void personalInfromation(){
		
	}


	
}
