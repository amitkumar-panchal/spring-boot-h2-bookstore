package com.shivsoftech.apps.bookstore.repository;

import java.util.List;
import java.util.Map;

import com.shivsoftech.apps.bookstore.model.Book;

public interface BookRepository {
    
    public List<Book> searchBooks(Map<String, String> params);

    public Book searchBookById(int id);

}
