package com.backend.dao;

import java.util.List;


import com.backend.model.Chat;

public interface UserDao {
	
	public List <Chat> list(String username,String password);
	public void save(Chat user);
    public void update(Chat user);
    public Chat getproductbyid(int pid);


}
