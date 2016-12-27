package com.backend.appFashionista;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.dao.CartDao;
import com.backend.dao.Productdao;
import com.backend.dao.UserDao;
import com.backend.model.Cart;
import com.backend.model.Product;
import com.backend.model.User;
import com.backend.service.UserServiceImpl;

import com.backend.dao.Productdao;
import com.backend.model.Product;
//import com.backend.service.ProductServiceImpl;





public class App 
{
	@Autowired
	//public static  ProductServiceImpl ob;
	//public static   ProductServiceImpl getOb() 
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
		 
		Productdao pd=(Productdao)appobj.getBean("pdao");
		UserDao ud=(UserDao)appobj.getBean("udao");
	/*	Categorydao cd=(Categorydao)appobj.getBean("cdao");*/
		CartDao cd=(CartDao)appobj.getBean("ccdao");

		  User add = new User();
		 
		 
		       /* add.setUsername("lalli");
		        add.setEmail("lalli6295");
		        add.setPassword("sweety");
		        add.setPassword_confirm("sweety");
		  */
		//  ud.save(add);
	ud.update(add);
        
   //     Product add = new Product();
     //   add.setId(44);
    //    add.setPname("lallitha");
     //   add.setPdesc("excell");
   //     add.setPrice(188888);
  
        
       Product add1 = new Product();
         /*add1.setPid(1);
        add1.setPname("lipstick");
       add1.setPdesc("excellent");
       add1.setPrice(55);
       add1.setQuantity(3);
        */
		        pd.save(add1);
		        pd.delete(1);       
		        
		       
		Cart addd = new Cart();
		cd.save(addd);
		cd.delete(1);
		        
		        
		       /* Category cat1 = new Category();
		          cat1.setCid(1);
		         cat1.setCatname("lipppp");
		        cat1.setCatdesc("excellent");
		      
		         
		 		        cd.save(cat1);*/
		 		       // cd.delete(1);       
		 		        
		        
		        
		        
		 
		        
		        //  ud.save(add);
      
      // ud.update(add);
   
	}
}


           