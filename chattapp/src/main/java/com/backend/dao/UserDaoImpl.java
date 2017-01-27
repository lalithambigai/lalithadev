package com.backend.dao;
import java.util.List;

    import org.hibernate.Session;
    import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.Transactional;

     import com.backend.model.Chat;
	

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
	    public void save(Chat user) {
	    	Session session=sessionFactory.openSession();
	    	user.setRoleId("USER_ROLE");
	    	user.setEnabled(true);
	    	session.save(user);
	    	session.flush();
	    	session.close();   
	        
	    }
	    
	    
		public List<Chat> list(String username,String password) {
			Session session=sessionFactory.openSession();
			@SuppressWarnings("unchecked")
			List<Chat> list= session.createQuery("FROM  Chat user WHERE user.username='"+username+"' and user.password='"+password+"'").list();
			return list;
		}
		
	  @Transactional
	   public void update(Chat user)
	    {
	    	Session session=sessionFactory.openSession();
	    	session.update(user);
	    	session.flush();
	    	session.close();
	    }
	   @Transactional
	    public void delete(Chat user)
	    {
	    	Session session=sessionFactory.openSession();
	    	session.delete(user);
	    	session.flush();
	    	session.close();
	    }
	
	public Chat getproductbyid(int pid) {
		// TODO Auto-generated method stub
		return null;
	}
	
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




