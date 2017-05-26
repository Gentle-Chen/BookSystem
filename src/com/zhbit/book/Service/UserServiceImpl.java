package com.zhbit.book.Service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.zhbit.book.Dao.UserDao;
import com.zhbit.book.Domain.*;

@Transactional
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDao.login(user);
	}
	public Seller login(Seller seller) {
		// TODO Auto-generated method stub
		return userDao.login(seller);
	}

	public User regist(User user){
		return 	userDao.regist(user);
	}
	public Seller regist(Seller seller){
		return 	userDao.regist(seller);
}


}
