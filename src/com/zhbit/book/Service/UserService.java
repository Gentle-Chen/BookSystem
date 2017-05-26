package com.zhbit.book.Service;


import com.zhbit.book.Domain.Seller;
import com.zhbit.book.Domain.User;


public interface UserService {
	public User login(User user);
	
	public Seller login(Seller seller);

	public Seller regist(Seller seller);
	
	public User regist(User user);

	
	
	
}
