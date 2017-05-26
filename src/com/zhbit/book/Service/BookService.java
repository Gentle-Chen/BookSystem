package com.zhbit.book.Service;

import java.util.List;

import com.zhbit.book.Domain.Book;
import com.zhbit.book.Domain.PageBean;

public interface BookService {

	void addBook(Book book);

	List<Book> bookList();

	PageBean bookListPage(int currentPage);

	Book findOne(int bookId);

	void CarDelete(int bookId);

	void CarUpdate(int id, int number);
	
	public void setPrice();

	void CarAdd(int bookId, int number);


}
