package com.backend.service;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.backend.dao.Productdao;
import com.backend.model.Product;



	@Repository("Productdao")
	public class ProductServiceImpl implements ProductService {
	    private Productdao ud1;

		public Productdao getUd1() {
			return ud1;
		}

		public void setUd1(Productdao ud1) {
			this.ud1 = ud1;
		}

		public void update(Product product) {
			// TODO Auto-generated method stub
			
		}

		
		//public void save(Product product) {
		//	ud1.save(product);
			
		}
	
	
	 
	   


	 
	
	

