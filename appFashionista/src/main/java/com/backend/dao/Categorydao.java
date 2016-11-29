package com.backend.dao;
import java.util.List;

import com.backend.model.Category;
import com.backend.model.User;





public interface Categorydao {
	

//	public List <User> list();
	
	public List<Category> list1();

		    public void save(Category category);
		     public void update(Category category);
		    public void delete(int cid);
		     
		   public Category getcategorybyid(int cid);
		     
	
}


