package com.shivsoftech.apps.bookstore.service;

import java.util.List;
import java.util.Map;

import com.shivsoftech.apps.bookstore.model.Book;

public interface BookService {

	public List<Book> searchBooks(Map<String, String> params);
}
