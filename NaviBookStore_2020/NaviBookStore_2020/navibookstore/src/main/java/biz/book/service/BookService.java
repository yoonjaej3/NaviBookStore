package biz.book.service;

import java.util.List;

import biz.book.vo.BookVO;

public interface BookService {
	List<BookVO> searchBook(String condition, String keyword); 
}
