package com.shivsoftech.apps.bookstore.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.shivsoftech.apps.bookstore.model.User;

@Repository
public class UserRepositoryImpl implements UserRepository {

	protected final Log logger = LogFactory.getLog(getClass());
	
    @PersistenceContext
    EntityManager entityManager;
    
	private static String FIND_BY_USERNAME = "select u.id, u.username, u.password, u.name, r.role " +
			"from tbluser u, tblrole r " +
			"where u.username = r.username and u.username = ?";
		
	@Override
	public User findByUsername(String username) {
		
		logger.debug("Inside findByUsername() : username : "+username);
		
		Query query = entityManager.createNativeQuery(FIND_BY_USERNAME, User.class);
        query.setParameter(1, username);

        List<User> userList = query.getResultList();
		logger.debug("Inside findByUsername() : Users : "+userList);
        
        if (userList!=null && !userList.isEmpty()) {
        	return userList.get(0);
        }
		return null;
	}

}
