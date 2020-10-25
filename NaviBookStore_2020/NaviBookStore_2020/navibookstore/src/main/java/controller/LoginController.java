package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import biz.user.service.UserService;
import biz.user.vo.UserVO;

@Controller
public class LoginController {
	
	@Autowired
	UserService service;
	
	@RequestMapping(value = "/login.do",method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginpost(String id, String password ,HttpServletRequest req) {
		UserVO vo = service.Login(id, password);
		System.out.println(vo+"로그인 중");
		HttpSession session = req.getSession();
		if(vo!=null)
		{
			session.setAttribute("login", vo);
			return "redirect:index.jsp";
		}
		else
		{
			req.setAttribute("msg","로그인 실패");
			return "login";
		}
		
	}
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req) {
		
		req.getSession().invalidate();
		return "redirect:index.jsp";
	}
	
	

}
