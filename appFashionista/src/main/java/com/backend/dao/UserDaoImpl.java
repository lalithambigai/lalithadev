package com.backend.dao;


	import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
    import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;

     import com.backend.model.User;
	

	@Repository("UserDao")
	public class UserDaoImpl implements UserDao {
	    @Autowired
	    private SessionFactory sessionFactory;
	 
	    
	     
	    public SessionFactory getSessionFactory() {
			return sessionFactory;
		}
		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
		
		
		
		
	    @Transactional
	    public void save(User user1) {
	    	Session session=sessionFactory.openSession();
	    	user1.setRoleId("USER_ROLE");
	    	user1.setEnabled(true);
	    	session.save(user1);
	    	session.flush();
	    	session.close();   
	        
	    }
	    
	    
		public List<User> list2(String username,String password) {
			Session session=sessionFactory.openSession();
			@SuppressWarnings("unchecked")
			List<User> list2= session.createQuery("FROM User user WHERE user.username='"+username+"' and user.password='"+password+"'").list();
			return list2;
		}
		
	
	
	
		
	
	
	  @Transactional
	   public void update(User user1)
	    {
	    	Session session=sessionFactory.openSession();
	    	session.update(user1);
	    	session.flush();
	    	session.close();
	    }
	   @Transactional
	    public void delete(User user1)
	    {
	    	Session session=sessionFactory.openSession();
	    	session.delete(user1);
	    	session.flush();
	    	session.close();
	    }
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//   }}
	   // @SuppressWarnings("unchecked")
		//public List <User> list() {
			// TODO Auto-generated method stub
			//Session session=sessionFactory.openSession();
			
		//	List<User> lists1=session.createQuery("from User").list();
		//	return lists1;
		//}
	  

	//}


