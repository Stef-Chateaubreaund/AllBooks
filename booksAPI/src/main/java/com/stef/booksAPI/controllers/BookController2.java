package com.stef.booksAPI.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stef.booksAPI.models.Book;
import com.stef.booksAPI.services.BookService;

@Controller
public class BookController2 {
	@Autowired 
	private BookService bookService;
	
	@GetMapping("/books/{id}")
	public String index(@PathVariable("id") Long id, Model model) {
		
		//id puts the book in the page
		Book foundBook = bookService.findBook(id); 
		//book with B is the name of the model!!!! making more sense now..
		//found book is the new obj created and now we need to put in the found book
		//( that would be the book we are looking for on our DB
		
		
		model.addAttribute("oneBook", foundBook);
		//we need to get it on book service******
		
		return "show.jsp";
	}
	
	    
	  @RequestMapping("/books")
	  public String index(Model model) {
	        List<Book> books = bookService.allBooks();
	        model.addAttribute("books", books);
	        return "index.jsp";
	    }
	}


