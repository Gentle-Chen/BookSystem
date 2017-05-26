package com.zhbit.book.Action;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.book.Domain.*;
import com.zhbit.book.Service.UserService;

public class userAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;
	private User user;
	private Seller seller;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//登陆验证
	public String login() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String person = request.getParameter("person");
		if(person.equals("user")){
			user = new User();
			user.setName(request.getParameter("name"));
			user.setPassword(request.getParameter("password"));
			User u = userService.login(user);
			if (u!= null) {
				ServletActionContext.getRequest().setAttribute("user", u);
			}
			return "userLogin";
		}
		if(person.equals("seller")){
			seller = new Seller();
			seller.setName(request.getParameter("name"));
			seller.setPassword(request.getParameter("password"));
			Seller s = userService.login(seller);
			if (s!= null) {
				ServletActionContext.getRequest().setAttribute("seller", s);
			}
			return "sellerLogin";
		}
		return SUCCESS;
	
	}
	
	//注册验证
	public String register() {
		HttpServletRequest request = ServletActionContext.getRequest(); 
		try{
			request.setCharacterEncoding("GBK");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String person = request.getParameter("person");
		String confirmPassword = request.getParameter("confirmpassword");
		if(person.equals("user")){
			user = new User();
			user.setName(request.getParameter("name"));
			user.setPassword(request.getParameter("password"));
			user.setEmail(request.getParameter("email"));
			user.setTelphone(request.getParameter("telphone"));
			user.setAddress(request.getParameter("address"));
			if(user.getPassword().equals(confirmPassword)){
				userService.regist(user);
				return "userRegist";
			}
		}
		if(person.equals("seller")){
			seller = new Seller();
			seller.setName(request.getParameter("name"));
			seller.setPassword(request.getParameter("password"));
			seller.setEmail(request.getParameter("email"));
			seller.setTelphone(request.getParameter("telphone"));
			seller.setAddress(request.getParameter("address"));
			if(seller.getPassword().equals(confirmPassword)){
				userService.regist(seller);
				return "sellerRegist";
			}
		}
    	return this.SUCCESS;		
	}
	

}
