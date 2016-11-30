package com.backend.dao;
import java.util.List;

import com.backend.model.Product;
import com.backend.model.User;

public interface Productdao {
	

//	public List <User> list();
	
	public List<Product> list1();

		public List<User> list2(); 
		public List<Product> prod(String categories);
	     
		    public void save(Product product);
		     public void update(Product product);
		    public void delete(int pid);
		     
		   public Product getproductbyid(int pid);

		
	
		}

