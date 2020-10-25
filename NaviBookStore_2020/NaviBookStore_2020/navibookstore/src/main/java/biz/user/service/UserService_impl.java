package biz.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import biz.user.dao.UserDAO;
import biz.user.vo.UserVO;

@Component("userservice")
public class UserService_impl implements UserService{
	@Autowired
	@Qualifier("spring_user")
	UserDAO dao;
	
	public UserService_impl() {	}

	public UserService_impl(UserDAO dao) {		
		this.dao = dao;
	}
	
	@Override
	public UserVO Login(String id, String pw) {
		return dao.Login(id, pw);
	}
	@Override
	public int addUser(UserVO user) throws Exception {
		return dao.addUser(user);
	}
	@Override
	public UserVO findID(String name, String phone) {
		return dao.findID(name, phone);
	}
	@Override
	public UserVO findPW(String id, String name, String phone) {
		return dao.findPW(id, name, phone);
	}
	/*
	@Override
	public boolean IDcheck(String id) {
		return dao.IDcheck(id);
	}*/
	@Override
	public int IDcheck(String id) {
		// TODO Auto-generated method stub
		return dao.IDcheck(id);
	}
	
	
}
