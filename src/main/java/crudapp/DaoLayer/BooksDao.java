package crudapp.DaoLayer;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import crudapp.model.Book;


@Repository
public class BooksDao {

	@Autowired
	private HibernateTemplate hbrtmp;
	
	@Transactional
	public void insert(Book book) {
		System.out.println("Inside USERDAO --->");
		
		 hbrtmp.saveOrUpdate(book);
		 
		 }
    
	
	public Book getBook(int id) {
		
		return this.hbrtmp.get(Book.class, id);
	}
	
	public List<Book> getAll(){
		return  this.hbrtmp.loadAll(Book.class);
		
	}
	
	@Transactional
	public void deleteBook(int bookId) {
		
		this.hbrtmp.delete(hbrtmp.get(Book.class, bookId));
		}
	
	@Transactional
	public void updateBook(Book book) {
		
		
		  this.hbrtmp.delete(hbrtmp.get(Book.class, book.getBookId()));
		  
		  this.hbrtmp.saveOrUpdate(book);
		 
	}

	public HibernateTemplate getHbrtmp() {
		return hbrtmp;
	}

	public void setHbrtmp(HibernateTemplate hbrtmp) {
		this.hbrtmp = hbrtmp;
	}
	
}
