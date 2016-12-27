package com.backend.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.backend.dao.CartDao;
import com.backend.dao.CartDaoImpl;
/*import com.backend.dao.CategoryDaoImpl;
import com.backend.dao.Categorydao;*/
import com.backend.dao.ProductDaoImpl;
import com.backend.dao.Productdao;
//import com.backend.dao.ProductDaoImpl;
//import com.backend.dao.Productdao;
import com.backend.dao.UserDao;
import com.backend.dao.UserDaoImpl;
import com.backend.model.Cart;/*
import com.backend.model.Category;*/
import com.backend.model.Product;
import com.backend.model.User;

@Configuration
@ComponentScan("com.backend.model")
@EnableTransactionManagement
public class AppConfig {
	
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);//user defined class
	 sessionBuilder.addProperties(getHibernateProperties());
	 System.out.println("before");
    sessionBuilder.addAnnotatedClasses(User.class);//scan
   System.out.println("after");
   sessionBuilder.addAnnotatedClasses(Product.class);
  /* sessionBuilder.addAnnotatedClasses(Category.class);*/
   sessionBuilder.addAnnotatedClasses(Cart.class);
	 
	 
	    return sessionBuilder.buildSessionFactory();
	}
	
	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("welcome1"); 
	BasicDataSource dataSource = new BasicDataSource();
	System.out.println("welcome2"); 
	dataSource.setDriverClassName("org.h2.Driver");
	System.out.println("welcome3"); 
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test3");
	System.out.println("welcome4"); 
	dataSource.setUsername("sa");
	System.out.println("welcome5"); 
	dataSource.setPassword("sa");
	return dataSource;
	}
	


@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
{
    HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
    return transactionManager;
}
	
	
	private Properties getHibernateProperties()
	{
	    Properties properties = new Properties();
	    System.out.println("inside getHibernate");
	    properties.put("hibernate.show_sql", "true");//visible all true
	  
	    properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	  
	    properties.put("hibernate.hbm2ddl.auto", "update");
	  
	  
	   
	  	    return properties; 
	
	}
	@Autowired
	@Bean(name = "pdao")
	public Productdao getProductService()
	{
		return new ProductDaoImpl();
	}
	
	@Autowired
	@Bean(name = "udao")
	public UserDao getUserService()
	{
		return new UserDaoImpl();
	}
	
	
@Autowired
@Bean(name = "ccdao")
public CartDao getCartService()
{
	return new CartDaoImpl();
}

}	

	
	
	

