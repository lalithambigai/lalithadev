package com.backend.chattapp;
   
import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.AnnotationConfigApplicationContext;


	import com.backend.dao.UserDao;
	
	import com.backend.model.Chat;
	import com.backend.service.UserServiceImpl;




	public class App 
	{
		@Autowired	
		public static  UserServiceImpl ob;
	     public static  UserServiceImpl getOb() 
		
		{
			return ob;
		}
		//public static void setOb(ProductServiceImpl ob) 
	     public static void setOb(UserServiceImpl ob) 
	 	
		{
			App.ob = ob;
		}

		
		public static void main(String[] args)
		{
	        @SuppressWarnings("resource")
	        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext(); 
			System.out.println("APP");
			appobj.scan("com.backend.configuration");
			appobj.refresh();
			 
			
			UserDao ud=(UserDao)appobj.getBean("udao");
			
			 Chat add = new  Chat();
		     	add.setUsername("lalli");
		        add.setEmail("lalli6295");
		        add.setPassword("sweety");
		        add.setMobileno(null);
		ud.save(add);
	//	ud.update(add);
	        
	   
		}
	}


	           
	
	


