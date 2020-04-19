package com.shivsoftech.apps.bookstore.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shivsoftech.apps.bookstore.model.User;
import com.shivsoftech.apps.bookstore.repository.UserRepository;

@Service
public class SecurityServiceImpl implements SecurityService {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public User validateUser(String username, String password) {
		
		logger.debug("Inside validateUser() : username : "+username);
		
		User user = userRepository.findByUsername(username);
		logger.debug("Inside validateUser() : user : "+user);

		return user;
	}    
}
