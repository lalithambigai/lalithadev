package com.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.backend.model.Cart;

public class CartDaoImpl implements CartDao {

	 @Autowired
	    private SessionFactory sessionFactory;
	 
	    
	     
	    public SessionFactory getSessionFactory() {
			return sessionFactory;
		}
		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

	    @Transactional
	    public void save(Cart cart) {
	    	Session session=sessionFactory.openSession();
	    	session.save(cart);
	    	session.flush();
	    	session.close(); 
	}
	    	
	     
	    	  @Transactional
	    	    public void update(Cart cart) {
	    	    	Session session=sessionFactory.openSession();
	    	    	session.update(cart);
	    	    	session.flush();
	    	    	session.close();   
	    	   }
	    	  
	    	  
	    	  @SuppressWarnings("unchecked")
	  		public List<Cart> list1() {
	  			Session session=sessionFactory.openSession();
	  			List<Cart> list1=session.createQuery("from Cart").list();
	  			return list1;
	  		}

public void delete(int cart_Id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	Cart cart=(Cart)session.get(Cart.class,cart_Id);
	session.delete(cart);
	session.flush();
	session.close();
	
}
public Cart getcartbyid(int cart_Id) {

	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	Cart cart=(Cart)session.get(Cart.class,cart_Id);
	session.close();
	return cart;
}
public List<Cart> list1(String string) {
	// TODO Auto-generated method stub
	return null;
}
	    	  
	
	
}
