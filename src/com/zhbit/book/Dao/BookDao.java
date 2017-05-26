package com.zhbit.book.Dao;

import java.util.List;

import com.zhbit.book.Domain.Book;
@SuppressWarnings("all")
public interface BookDao {

	void addBook(Book book);

	List<Book> bookList();

	int getCount();

	
	List bookListPage(int begin, int pageSize);

	Book findOne(int bookId);


}
