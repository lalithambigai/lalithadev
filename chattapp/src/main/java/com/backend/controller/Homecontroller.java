package com.backend.controller;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.backend.dao.UserDao;
import com.backend.model.Chat;

@RestController
public class Homecontroller {
	 private UserDao ud;

	 public Homecontroller()
	{
		 try
		 {
	@SuppressWarnings("resource")
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
    context.scan("com.backend.configuration");
    System.out.println("config");
    context.refresh();
     ud=(UserDao)context.getBean("udao");
	}
		 catch(Exception e){
			 e.printStackTrace();}
		 
		 }
	@RequestMapping(value="/register/{username}",method=RequestMethod.POST,headers="Accept=application/json")

		public ResponseEntity register(@PathVariable String username){
		System.out.println("welcome");
		Chat chat=new Chat();
		chat.setUsername(username);
		/*chat.setEmail(email);
		chat.setPassword(password);
		chat.setPassword_confirm(password_confirm);*/
		ud.save(chat);
		
		return new ResponseEntity(HttpStatus.OK);


		}}
	
