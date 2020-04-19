package com.shivsoftech.apps.bookstore.service;

import com.shivsoftech.apps.bookstore.model.User;

public interface SecurityService {
	
    public User validateUser(String username, String password);
    
}
