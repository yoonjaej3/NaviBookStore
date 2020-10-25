package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.user.service.UserService;
import biz.user.vo.UserVO;

@Controller
public class FindController {
	
	@Autowired
	UserService service;
	
	
	@RequestMapping(value = "/findid.do",method = RequestMethod.GET)
	public String findid() {
		return "findid";
	}

	@RequestMapping(value = "/findid.do", method = RequestMethod.POST)
	@ResponseBody
	public String userFindPage(UserVO vo) {
		
		UserVO v= service.findID(vo.getUsername(), vo.getPhone());
		return v.getUserid();
	}
	
	@RequestMapping(value = "/findpw.do",method = RequestMethod.GET)
	public String findpw() {
		return "findpw";
	}

	@RequestMapping(value = "/findpw.do", method = RequestMethod.POST)
	@ResponseBody
	public String password(UserVO vo) {
		System.out.println(vo);
		UserVO v= service.findPW(vo.getUserid(),vo.getUsername(),vo.getPhone());
		System.out.println("-----");
		System.out.println(v);
		return v.getUserpwd();
	}
	
	
}
