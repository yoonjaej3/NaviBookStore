package biz.user.dao;

import biz.user.vo.UserVO;

public interface UserDAO {
	UserVO Login(String id, String pwd);
	int addUser(UserVO user)throws Exception;
	UserVO findPW(String id,String name, String tel);
	UserVO findID(String name, String tel);
	int  IDcheck(String id);
}
