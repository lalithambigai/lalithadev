package com.backend.dao;
import java.util.List;

  import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;

import com.backend.model.Category;
import com.backend.model.User;

	 


	@SuppressWarnings("unused")
	@Repository("Categorydao")
	public class CategoryDaoImpl implements Categorydao {
	    @Autowired
	    private SessionFactory sessionFactory;
	 
	    
	     
	    public SessionFactory getSessionFactory() {
			return sessionFactory;
		}
		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
	    @Transactional
	    public void save(Category category) {
	    	Session session=sessionFactory.openSession();
	    	session.save(category);
	    	session.flush();
	    	session.close(); 
	}
	    	
	     
	    	  @Transactional
	    	    public void update(Category category) {
	    	    	Session session=sessionFactory.openSession();
	    	    	session.update(category);
	    	    	session.flush();
	    	    	session.close();   
	    	   }

	    	  
	    	
			@SuppressWarnings("unchecked")
			public List<Category> list1() {
				Session session=sessionFactory.openSession();
				List<Category> list1=session.createQuery("from Category").list();
				return list1;
			}
			
	    
			@SuppressWarnings("unused")
			public void delete(int cid) {
				// TODO Auto-generated method stub
				Session session=sessionFactory.openSession();
				Category category=(Category)session.get(Category.class,cid);
				session.delete(category);
				session.flush();
				session.close();
			}
			
			public Category getcategorybyid(int cid) {
						// TODO Auto-generated method stub
				Session session=sessionFactory.openSession();
				Category category=(Category)session.get(Category.class,cid);
				session.close();
				return category;
			}
	}
	