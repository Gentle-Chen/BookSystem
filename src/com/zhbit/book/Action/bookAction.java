package com.zhbit.book.Action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;
import com.zhbit.book.Domain.Book;
import com.zhbit.book.Domain.PageBean;
import com.zhbit.book.Service.BookService;

@SuppressWarnings("all")
public class bookAction extends ActionSupport {
	@Resource
	private BookService bookService;
	private File upload;
	private String uploadFileName;
	
	private int bookId;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	private String bookName;
	private String author;
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	private double bookPrice;
	private int number;
	private String publishName;
	private String photo;
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	
	public double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPublishName() {
		return publishName;
	}
	public void setPublishName(String publishName) {
		this.publishName = publishName;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	public String toAddBookPage(){
		
		return "toAddBookPage";
	}
	
	public String addBook(){
		if(upload != null){
			 String  imagePath = ServletActionContext.getServletContext()
					.getRealPath("/book/images");
			File serverFile = new File(imagePath
					+ "/" + uploadFileName);
			try {
				FileUtils.copyFile(upload, serverFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		photo = "book/images/"+uploadFileName;
		Book book = new Book();
		book.setBookName(bookName);
		book.setPhoto(photo);
		book.setAuthor(author);
		book.setBookPrice(bookPrice);
		book.setPublishName(publishName);
		book.setNumber(number);
		System.out.println(book);
	    bookService.addBook(book);
		return "addBook";
	}
	
	public String bookList(){
		List<Book> bookList = bookService.bookList();
		ServletActionContext.getRequest().setAttribute("bookList", bookList);
		return "bookList";
	}
	
	private int currentPage;
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String bookListPage(){
		
		PageBean bookBean = bookService.bookListPage(currentPage);
		
		ServletActionContext.getRequest().setAttribute("bookBean", bookBean);
		return "bookListPage";
	}
	
	public String BookItem(){
		
		int bookId = this.bookId;
		Book book =  bookService.findOne(bookId);
		ServletActionContext.getRequest().setAttribute("book", book);	
		return "BookItem";
	}
	
	/*
	 * 1、添加购物车
	 */
	
	public String CarAdd(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int number = Integer.parseInt(request.getParameter("number"));
		int bookId = Integer.parseInt(request.getParameter("bookId"));
		bookService.CarAdd(bookId,number);
		bookService.setPrice();
			return "CarAdd";
	}
	
	/*
	 * 2、删除购物车
	 */
	public String CarDelete(){
		int bookId = this.bookId;
		bookService.CarDelete(bookId);
		bookService.setPrice();
		return "CarDelete";
	}
	
	/*
	 * 3、转到修改页�?
	 */
	public String CarEdit(){
		int bookId = this.bookId;
		int number = this.number;
		Book book = bookService.findOne(bookId);
		book.setNumber(number);
		ServletActionContext.getRequest().setAttribute("book",book);
		return "CarEdit";
	}
	
	/*
	 * 4、修改购物车
	 */
	
	public String CarUpdate(){
		int id = this.bookId;
		int number = this.number;
		
		bookService.CarUpdate(id,number);
		bookService.setPrice();
		return "CarUpdate";
	}
	
	/*
	 * 5、查询购物车
	 */
	
	public String CarList(){
		
		
		return "CarList";
	}
	
	
}
