package biz.book.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import biz.book.vo.BookVO;

@Component("spring_book")
public class BookDAO_impl implements BookDAO{
	
	@Autowired
	JdbcTemplate template;
	
	
	@Override
	public List<BookVO> searchBook(String condition, String keyword) {
		String sql = "select * from book where upper("+condition+") like  '%'||?||'%'  ";
		
		return template.query(sql,new Object[] {keyword.toUpperCase()} , new BookRowMapper());
	}
	
	
	class BookRowMapper implements RowMapper<BookVO>{
		@Override
		public BookVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BookVO vo =new BookVO();
			vo =new BookVO();
			vo.setAuthor(rs.getString("author"));
			vo.setBookname(rs.getString("bookname"));
			vo.setBookno(rs.getInt("bookno"));
			vo.setCount(rs.getString("count"));
			vo.setPublisher(rs.getString("publisher"));
			
			return vo;
		}
	}
}
