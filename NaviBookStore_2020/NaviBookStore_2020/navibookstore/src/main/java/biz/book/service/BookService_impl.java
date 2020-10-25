package biz.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import biz.book.dao.BookDAO;
import biz.book.vo.BookVO;

@Component("bookservice")
public class BookService_impl implements BookService{
	@Autowired
	@Qualifier("spring_book")
	BookDAO dao;
	
	
	@Override
	public List<BookVO> searchBook(String condition, String keyword) {
		return dao.searchBook(condition, keyword);
	}
}
