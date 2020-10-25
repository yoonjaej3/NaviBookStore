package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.user.service.UserService;
import biz.user.vo.UserVO;

@Controller
public class SignupController {
   @Autowired
   private UserService service;
   
   @RequestMapping(value ="/user/idCheck", method =RequestMethod.GET)
   @ResponseBody
   public int idCheck(@RequestParam("userId") String user_id) {
      return service.IDcheck(user_id);
   }
   @RequestMapping(value="/signup.do",method = RequestMethod.GET)
   public String addUser() {
      return "signup";
   }
   @RequestMapping(value="/signup.do",method = RequestMethod.POST)
   public String addUser(UserVO vo    ,HttpServletRequest req) throws Exception{
      service.addUser(vo);
      return "redirect:/login.do";
   }


}