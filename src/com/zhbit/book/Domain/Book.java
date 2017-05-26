package com.zhbit.book.Domain;

import java.util.HashSet;
import java.util.Set;

public class Book {
	private int bookId;
	private String bookName;
	private String author;
	private double bookPrice;
	private int number;
	private String publishName;
	private String photo;

	Set<OrderItem> bookOrderItems = new HashSet<OrderItem>();

	public Set<OrderItem> getBookOrderItems() {
		return bookOrderItems;
	}

	public void setBookOrderItems(Set<OrderItem> bookOrderItems) {
		this.bookOrderItems = bookOrderItems;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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
}
