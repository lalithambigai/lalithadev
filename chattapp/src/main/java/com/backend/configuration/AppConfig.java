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

/*import com.backend.dao.CartDao;
import com.backend.dao.CartDaoImpl;*/
/*import com.backend.dao.CategoryDaoImpl;
import com.backend.dao.Categorydao;*/
/*import com.backend.dao.ProductDaoImpl;
import com.backend.dao.Productdao;*/
//import com.backend.dao.ProductDaoImpl;
//import com.backend.dao.Productdao;
import com.backend.dao.UserDao;
import com.backend.dao.UserDaoImpl;
/*import com.backend.model.Cart;*/
/*import com.backend.model.Category;*/
/*import com.backend.model.Product;*/
import com.backend.model.Chat;

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
    sessionBuilder.addAnnotatedClasses(Chat.class);//scan
   System.out.println("after");
   /*sessionBuilder.addAnnotatedClasses(Product.class);*/
  /* sessionBuilder.addAnnotatedClasses(Category.class);*/
 /*  sessionBuilder.addAnnotatedClasses(Cart.class);*/
	 
	 
	    return sessionBuilder.buildSessionFactory();
	}
	
	
	   @Bean(name = "dataSource")
	   public DataSource getDataSource() {
		    BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
		dataSource.setUsername("PROJECT");
		dataSource.setPassword("saa");
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
	    System.out.println("inside");
	    properties.put("hibernate.show_sql", "true");//visible all true
	  
	    properties.put("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
	  
	    properties.put("hibernate.hbm2ddl.auto", "update");
	  
	  
	   
	  	    return properties; 
	
	}
	
	
	@Autowired
	@Bean(name = "udao")
	public UserDao getUserService()
	{
		System.out.println("hello");
		return new UserDaoImpl();
	}
	
	
/*@Autowired
@Bean(name = "ccdao")
public CartDao getCartService()
{
	return new CartDaoImpl();
}*/

}	

	
	
	

