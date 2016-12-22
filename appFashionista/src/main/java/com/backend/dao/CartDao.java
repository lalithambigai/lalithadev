package com.backend.dao;

import java.util.List;

import com.backend.model.Cart;

public interface CartDao {

	public List<Cart> list1();
	
    public void save(Cart cart);
    public void update(Cart cart);
   public void delete(int cart_Id);
    
  public Cart getcartbyid(int cart_Id);
	
	
}
