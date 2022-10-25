package crudapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crudapp.DaoLayer.BooksDao;
import crudapp.model.Book;


@Service
public class BookService {

	@Autowired
	private BooksDao bookDao;
	
    public void createUser(Book book) {
		
		System.out.println("Inside createUser form--->");
		
		  this.bookDao.insert(book);
	}
	
	public Book getBook(int bookid) {
		
		return this.bookDao.getBook(bookid);
	}
	
	public List<Book> getAllBooks(){
		
		return this.bookDao.getAll();
	}
	
	public void deletBook(int bookid) {
		
		this.bookDao.deleteBook(bookid);
	}
	
	public void updateBook(Book book) {
		
		this.bookDao.updateBook(book);
	}
}
