package com.backend.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.model.Product;
import com.backend.model.User;

 


@Repository("Productdao")
public class ProductDaoImpl implements Productdao {
    @Autowired
    private SessionFactory sessionFactory;
 
    
     
    public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
    @Transactional
    public void save(Product product) {
    	Session session=sessionFactory.openSession();
    	session.save(product);
    	session.flush();
    //	session.close(); 
}
    	
     
    	  @Transactional
    	    public void update(Product product) {
    	    	Session session=sessionFactory.openSession();
    	    	session.update(product);
    	    	session.flush();
    	    	session.close();   
    	   }
    	  
    /*	  
    	   @Transactional
   	    public void delete(Product product)
   	    {
   	    	Session session=sessionFactory.openSession();
   	    	session.delete(product);
   	    	session.flush();
   	    	session.close();
   	    }*/

    
		@SuppressWarnings("unchecked")
		public List<Product> list1() {
			Session session=sessionFactory.openSession();
			List<Product> list1=session.createQuery("from Product").list();
			return list1;
		}
		
    	@SuppressWarnings("unchecked")
		public List<User> list2() {
			Session session=sessionFactory.openSession();
			List<User> list2=session.createQuery("from User").list();
			return list2;
		}
		public void delete(int pid) {
			// TODO Auto-generated method stub
			Session session=sessionFactory.openSession();
			Product product=(Product)session.get(Product.class,pid);
			session.delete(product);
			session.flush();
			session.close();
			
		}
		public Product getproductbyid(int pid) {
		
			// TODO Auto-generated method stub
			Session session=sessionFactory.openSession();
			Product product=(Product)session.get(Product.class,pid);
			//session.close();
			return product;
		}
	/*	public Product prodById(int pid) {
			// TODO Auto-generated method stub
			return null;
		}*/
		
    	  
    	  

    	  @Transactional
    	  		public void delete1(int pid) {
    	    	Session session=sessionFactory.openSession();
    	    	session.delete(pid);
    	    	session.flush();
    	    	session.close();   
    	  }}    	  
    	  
		//public void save(Product product) {
			// TODO Auto-generated method stub
			
	


