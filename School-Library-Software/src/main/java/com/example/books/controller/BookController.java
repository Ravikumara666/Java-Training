package com.example.books.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.books.entity.Book;
import com.example.books.repository.BookRepository;

@Controller
@RequestMapping("/library")
public class BookController {
	@Autowired
	private BookRepository bookRepository;

	@GetMapping("/addBookForm")
	public String displayAddBookForm(Model model) {
		model.addAttribute("book", new Book());
 
		return "addBook";
	}
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("appName", "Java Training School Library");
		return "home";
	}
	@RequestMapping("/display")
	public String displayBookInfo(Model model) {
 
		List<Book> allBooks = (List<Book>) bookRepository.findAll();
		model.addAttribute("books", allBooks);
		if(allBooks.isEmpty())
			model.addAttribute("msg", "Unfortunately, the library is empty now. Let's"
					+ "contribute by adding some books");
		else {
			if(model.getAttribute("msg") == null)
				model.addAttribute("msg", "Welcome to Java Traning School Library");
		}
 
		return "displayBook";
	}
	@PostMapping("/addBook")
	public String addBook(@ModelAttribute("book") Book book, Model model) {
 
		book.setStatus("available");
		bookRepository.save(book);
		model.addAttribute("msg", "Book added successfully. Thanks");
 
		return displayBookInfo(model);
	}
	@PostMapping("/borrow")
	public String borrow(@RequestParam int id, Model model) {

		Book book = bookRepository.findById(id).get();
		book.setStatus("Borrowed");

		bookRepository.save(book);

		model.addAttribute("msg", "Book borrowed successfuly. Please return within a month's time");

		return displayBookInfo(model);
	}

	
	@GetMapping("/borrowForm/{id}")
	public String displayBorrowForm(@PathVariable String id, Model model) {

		Book book = bookRepository.findById(Integer.parseInt(id)).get();

		model.addAttribute("book", book);

		return "borrowBook";
	}

}