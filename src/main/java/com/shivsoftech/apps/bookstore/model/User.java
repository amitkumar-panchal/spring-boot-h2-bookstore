package com.shivsoftech.apps.bookstore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User implements Serializable {

	@Id
	long id;
   	String username;
    String password;
   	String role;
    String name;
    
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isManager() {
		return ("Manager".equals(role));
	}
	
	public boolean isCashier() {
		
		return ("Cashier".equals(role));
	}
	
	@Override
	public String toString() {
		return "User [id:" + id + "; username:" + username + "; role:" + role + "; name:" + name + "]";
	}
}
