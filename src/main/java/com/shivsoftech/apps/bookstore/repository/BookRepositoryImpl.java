package com.shivsoftech.apps.bookstore.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.shivsoftech.apps.bookstore.model.Book;

@Repository
public class BookRepositoryImpl implements BookRepository {


	protected final Log logger = LogFactory.getLog(getClass());
	
    private static String FIELD_QUANTITY_END     = "txtQtyEnd";
    private static String FIELD_QUANTITY_START   = "txtQtyStart";
    private static String FIELD_BOOK_ID          = "txtBookId";
    private static String FIELD_BOOK_AUTHOR      = "txtBookAuthor";
    private static String FIELD_BOOK_TITLE       = "txtBookTitle";
	
    @PersistenceContext
    EntityManager entityManager;
    
	private static String FIND_BOOKS = "select * from tblbook where 1=1 ";
	
	@Override
	public List<Book> searchBooks(Map<String, String> params) {
		
		logger.debug("Inside searchBooks() : Params : "+params);
        StringBuilder sb = new StringBuilder(FIND_BOOKS);
        
        if (params!=null && !params.isEmpty()) {

            for (Map.Entry<String, String> entry : params.entrySet()) {
                String strKey = entry.getKey();
                String strValue = entry.getValue();

                if (!(strValue!=null && !"".equalsIgnoreCase(strValue.trim()))) {
                    continue;
                }
                if (FIELD_BOOK_AUTHOR.equalsIgnoreCase(strKey)) {
                    sb.append(" and author like '%"+strValue+"%' ");
                }
                if (FIELD_BOOK_TITLE.equalsIgnoreCase(strKey)) {
                    sb.append(" and title like '%"+strValue+"%' ");
                }
                if (FIELD_BOOK_ID.equalsIgnoreCase(strKey)) {
                    sb.append(" and id = "+strValue+" ");
                }
                if (FIELD_QUANTITY_END.equalsIgnoreCase(strKey)) {
                    sb.append(" and stock <= "+strValue+" ");
                }
                if (FIELD_QUANTITY_START.equalsIgnoreCase(strKey)) {
                    sb.append(" and stock >= "+strValue+" ");
                }
            }
        }

		
		Query query = entityManager.createNativeQuery(sb.toString(), Book.class);

        List<Book> bookList = query.getResultList();
		logger.debug("Inside searchBookById() : Books : "+bookList);
        
		return bookList;
	}

	@Override
	public Book searchBookById(int bookId) {
		logger.debug("Inside searchBookById() : bookId : " + bookId);
		
        Map<String, String> mapParam = new HashMap<String, String>();
        mapParam.put(FIELD_BOOK_ID, ""+bookId);
        
        List<Book> bookList = searchBooks(mapParam);
		logger.debug("Inside searchBookById() : Books : "+bookList);
        
        if (bookList!=null && !bookList.isEmpty()) {
        	return bookList.get(0);
        }
		return null;
	}

}
