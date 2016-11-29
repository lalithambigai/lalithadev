package com.backend.dao;

import java.util.List;

import com.backend.model.User;

public interface UserDao {
	public List <User> list2(String username,String password);
	    public void save(User user1);
	 
	 
	   public void update(User user1);
	   public void delete(User user1); 
	}

