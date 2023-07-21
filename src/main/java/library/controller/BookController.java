package library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import library.dao.BookDAO;
import library.dto.Book;

@Controller
public class BookController {

	@Autowired
	private BookDAO dao;
	
	@RequestMapping("/reg")
	public ModelAndView registerBook() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register.jsp");
		mv.addObject("book", new Book());
		return mv;
	}
	
	@RequestMapping("/save")
	public ModelAndView saveBook(@ModelAttribute Book b) {
		ModelAndView mv=new ModelAndView();
		dao.saveBook(b);
		List<Book> books=dao.getAllBooks();
		mv.setViewName("details.jsp");
		mv.addObject("books", books);
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteBook(@RequestParam int id) {
		ModelAndView mv=new ModelAndView();
		dao.deleteBook(id);
		List<Book> books=dao.getAllBooks();
		mv.setViewName("details.jsp");
		mv.addObject("books", books);
		return mv;
	}
	
	@RequestMapping("/edit")
	public ModelAndView editBook(@RequestParam int id) {
		ModelAndView mv=new ModelAndView();
		Book book=dao.findBook(id);
		mv.setViewName("edit.jsp");
		mv.addObject("book", book);
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateBook(@ModelAttribute Book book) {
		ModelAndView mv=new ModelAndView();
		dao.update(book,book.getBookId());
		mv.setViewName("details.jsp");
		List<Book> books=dao.getAllBooks();
		mv.addObject("books", books);
		return mv;
		
	}
	
	
}
