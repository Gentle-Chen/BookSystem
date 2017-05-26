package com.zhbit.book.Dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zhbit.book.Domain.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao {

	@Override
	public void addBook(Book book) {
		// TODO Auto-generated method stub
		HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
		hibernateTemplate.save(book);
	}

	@SuppressWarnings("all")
	@Override
	public List<Book> bookList() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Book");
	}

	@SuppressWarnings("unchecked")
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		List<Book> list = this.getHibernateTemplate().find("select count(*) from Book");
		if(list != null && list.size() != 0){
			Object object =	 list.get(0);
			Long log = (Long) object;
			return log.intValue();
		}
		return 0;
	}

	@SuppressWarnings("all")
	@Override
	public List bookListPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Book.class);
		List list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public Book findOne(int bookId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Book.class, bookId);
	}


}
