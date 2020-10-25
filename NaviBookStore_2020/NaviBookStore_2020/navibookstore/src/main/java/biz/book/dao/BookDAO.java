package biz.book.dao;

import java.util.List;

import biz.book.vo.BookVO;

public interface BookDAO {
	List<BookVO> searchBook(String condition, String keyword); 
}
