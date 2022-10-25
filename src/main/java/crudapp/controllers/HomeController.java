package crudapp.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crudapp.model.Book;
import crudapp.services.BookService;

@Controller
public class HomeController {

	@Autowired
	private BookService bookService;

	@RequestMapping("/home")
	public String openHome() {

		return "home";
	}

	@RequestMapping("/")
	public String openHome1() {

		return "home";
	}

	@RequestMapping(path = "/press")
	public String openCrud(Model model) {

		List<Book> book = bookService.getAllBooks();

		model.addAttribute("books", book);
		return "crudApp";
	}

	@RequestMapping("/inputForm")
	public String formPage(Model m) {

		System.out.println("Inside input form--->");

		m.addAttribute("title", "Add Book Details");

		return "form";
	}

	@RequestMapping(path = "/processBook", method = RequestMethod.POST)
	public String addBook(@ModelAttribute Book book, Model m) {

		this.bookService.createUser(book);

		System.out.println("processing book");
		m.addAttribute("title", "PROD CRUD APP");
		return "redirect:/press";
	}
	@RequestMapping(path="/updateBook", method=RequestMethod.POST) 
	public String updateBook(@ModelAttribute Book book, Model m ) {
	  
	  this.bookService.updateBook(book);
	  
	  System.out.println("processing book"); 
	  m.addAttribute("title","PROD CRUD APP");
	  return "redirect:/press"; 
	  }

	@RequestMapping("/delete/{bookid}")
	public RedirectView deleteBook(@PathVariable("bookid") int bookid, HttpServletRequest req) {

		bookService.deletBook(bookid);
		RedirectView rv = new RedirectView();
		rv.setUrl(req.getContextPath() + "/press");

		return rv;
	}

	/*
	 * @RequestMapping("/update/{bookid}") public String
	 * updateBook(@PathVariable("bookid") int bookid, HttpServletRequest req, Model
	 * m) {
	 * 
	 * Book book = bookService.getBook(bookid); m.addAttribute("book", book);
	 * 
	 * return "editForm"; }
	 */
	
	  
	 

}
