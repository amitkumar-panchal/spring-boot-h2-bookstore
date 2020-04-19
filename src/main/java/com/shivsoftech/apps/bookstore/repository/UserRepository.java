package com.shivsoftech.apps.bookstore.repository;

import com.shivsoftech.apps.bookstore.model.User;

public interface UserRepository {

	User findByUsername(String username);
}
