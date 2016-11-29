package com.backend.service;

 
	import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import com.backend.dao.UserDao;
     import com.backend.model.User;
	

		@Repository("UserDao")
		public class UserServiceImpl implements UserService {
		    private UserDao ud1;
		
		 public UserDao getUd1(){
			 return ud1;
			 
		 }
		 public UserDao setUd1(UserDao ud1){
			 return this.ud1= ud1;
		 }
		 
		    public UserServiceImpl(SessionFactory sessionFactory) {
		    }
		    public void save(User  user1) 
		    {
		    	ud1.save(user1);
		    	
		    }
		//	public void update(User user1) {
				// TODO Auto-generated method stub
				
			}
		//	public List <User> list() {
				// TODO Auto-generated method stub
				
				//return ud1.list();
			//}
		    	
		    
		   


		 
		
		

 