package com.shivsoftech.apps.bookstore.web.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shivsoftech.apps.bookstore.model.Book;
import com.shivsoftech.apps.bookstore.service.BookService;

@Controller
public class BookController {

	protected final Log logger = LogFactory.getLog(getClass());

	private static String RESPONSE_PARAM_BOOKLIST = "BookList";
	
	@Autowired
	BookService bookService;
	
    @RequestMapping("/searchBook")
    public String searchBooks(ModelMap model, HttpServletRequest request) {

    	logger.debug("Inside searchBooks() : model "+model);
    	
    	Map<String, String> params = extractParameters(request);
    	logger.debug("Inside searchBooks() : params : "+params);
    			
    	List<Book> bookList = bookService.searchBooks(params);
    	logger.debug("Inside searchBooks() : bookList : "+bookList);
    	
        if (bookList!=null && !bookList.isEmpty()) {
        	model.addAttribute(RESPONSE_PARAM_BOOKLIST, bookList);
        }
        
        return "Home";
    }

    private Map<String, String> extractParameters(HttpServletRequest request) {
        
    	logger.debug("Inside extractParameters()");
        Map<String, String> params = new HashMap<String, String>();
        
        Enumeration<String> enumeration = request.getParameterNames();
        
        while(enumeration.hasMoreElements()) {
            String key = enumeration.nextElement();
            String value = request.getParameter(key);
            params.put(key, value);
        }
        
    	logger.debug("Inside extractParameters() : params : "+params);
        return params;
    }
}
