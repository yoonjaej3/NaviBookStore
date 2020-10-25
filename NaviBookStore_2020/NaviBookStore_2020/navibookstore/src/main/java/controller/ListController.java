package controller;

 

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

 

import biz.book.service.BookService;

import biz.book.vo.BookVO;

 

@Controller

public class ListController {

	@Autowired

	BookService service;

	@RequestMapping(value ="/list2.do",method = RequestMethod.POST)
	public ModelAndView view(HttpServletRequest httpServletRequest)
	{

		ModelAndView mav = new ModelAndView();
		String title = httpServletRequest.getParameter("searchContent");
		mav.addObject("books", service.searchBook("bookname",title));
		mav.setViewName("list2");
		return mav;

	}

}