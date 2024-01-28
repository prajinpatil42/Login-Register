package com.company.dao;
 import com.company.*;
 
public interface UserDao {
	
	boolean addUser(User user);

	boolean isValidUser(String username, String password);

	

}
