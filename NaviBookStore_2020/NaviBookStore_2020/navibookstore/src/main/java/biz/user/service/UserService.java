package biz.user.service;

import biz.user.vo.UserVO;

public interface UserService {
	UserVO Login(String id, String pw);
	int addUser(UserVO user)throws Exception;
	UserVO findPW(String id,String name, String phone);
	UserVO findID(String name, String phone);
	//boolean IDcheck(String id);
	int IDcheck(String id);

}
