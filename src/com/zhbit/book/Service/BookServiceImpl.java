package com.zhbit.book.Service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import com.zhbit.book.Dao.BookDao;
import com.zhbit.book.Domain.Book;
import com.zhbit.book.Domain.PageBean;



@Transactional
public class BookServiceImpl implements BookService {

	@Resource
	private BookDao bookDao;

	@Override
	public void addBook(Book book) {
		// TODO Auto-generated method stub
		bookDao.addBook(book);
	}

	@Override
	public List<Book> bookList() {
		// TODO Auto-generated method stub
		return bookDao.bookList();
	}

	@SuppressWarnings("all")
	@Override
	public PageBean bookListPage(int currentPage) {
		// TODO Auto-generated method stub
		PageBean bookBean = new PageBean();
		bookBean.setCurrentPage(currentPage);
		
		int totalCount = bookDao.getCount();
		bookBean.setTotalCount(totalCount);
		int pageSize = 8;
		bookBean.setPageSize(pageSize);
		 int totalPage =0;
		 if(totalCount%pageSize==0){
				totalPage=totalCount/pageSize;
			}else {
				totalPage=totalCount/pageSize+1;
			}
		 bookBean.setTotalPage(totalPage);
		 int begin = (currentPage-1)*pageSize;
		 List list = bookDao.bookListPage(begin,pageSize);
		 bookBean.setList(list);
		return bookBean;
	}

	@Override
	public Book findOne(int bookId) {
		// TODO Auto-generated method stub
		return bookDao.findOne(bookId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public void CarDelete(int bookId) {
		// TODO Auto-generated method stub
		List<Book> shoppingBook = new ArrayList<Book>();
		HttpSession session = ServletActionContext.getRequest().getSession();
		shoppingBook = (List<Book>)session.getAttribute("shoppingBook");
	
		//System.out.println(shoppingBook);
		for(int i=0;i<shoppingBook.size();i++){
			if(shoppingBook.get(i).getBookId() == bookId)
			{
				shoppingBook.remove(shoppingBook.get(i));
				break;
			}
		}
		
		if(shoppingBook.size()>0){
			session.setAttribute("shoppingBook", shoppingBook);
		}else {
			session.setAttribute("shoppingBook", null);
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public void CarUpdate(int id, int number) {
		// TODO Auto-generated method stub
		HttpSession session = ServletActionContext.getRequest().getSession();
		List<Book> shoppingBook = (List<Book>)session.getAttribute("shoppingBook");
		
		for(int i=0;i<shoppingBook.size();i++){
			
			if(shoppingBook.get(i).getBookId()==id){
				shoppingBook.get(i).setNumber(number);
				break;
			}
		}
	
		if(number==0){
			CarDelete(id);
		}
		if(shoppingBook.size()>0){
			session.setAttribute("shoppingBook", shoppingBook);
		}else {
			session.setAttribute("shoppingBook", null);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public void setPrice() {
		// TODO Auto-generated method stub
		
		double price = 0;
		List<Book> shoppingBook = (List<Book>)ServletActionContext.getRequest().getSession().getAttribute("shoppingBook");
		if(shoppingBook != null){
			
			for(int i=0;i<shoppingBook.size();i++)
			{
				price += shoppingBook.get(i).getBookPrice() * shoppingBook.get(i).getNumber();
			}
			
		}
		ServletActionContext.getRequest().getSession().setAttribute("totalMoney", price);
	}

	@SuppressWarnings("unchecked")
	@Override
	public void CarAdd(int bookId, int number) {
		// TODO Auto-generated method stub

		HttpSession session = ServletActionContext.getRequest().getSession();
		List<Book> shoppingBook = new ArrayList<Book>();
		if(session.getAttribute("shoppingBook")==null){
			session.setAttribute("shoppingBook", shoppingBook);
		}else {
			shoppingBook = (List<Book>) session.getAttribute("shoppingBook");
		}
		int i = 0;
		
		for(Book book:shoppingBook){
			if(bookId==book.getBookId()){
				i++;
				book.setNumber(book.getNumber()+number);	
			}
		}
		if(i==0){
			Book book = findOne(bookId);
			book.setNumber(number);
			shoppingBook.add(book);
			session.setAttribute("shoppingBook", shoppingBook);
		}
		
	}

}
