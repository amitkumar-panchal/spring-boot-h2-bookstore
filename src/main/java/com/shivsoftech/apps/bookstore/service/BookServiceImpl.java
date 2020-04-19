package com.shivsoftech.apps.bookstore.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shivsoftech.apps.bookstore.model.Book;
import com.shivsoftech.apps.bookstore.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	BookRepository bookRepository;
	
	@Override
	public List<Book> searchBooks(Map<String, String> params) {

		logger.debug("Inside searchBooks() : params : "+params);

		return bookRepository.searchBooks(params);
	}

}
