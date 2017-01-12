package com.backend.controller;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value="/register/{username}/{email}/{password}/{mobileno}",method=RequestMethod.POST,headers="Accept=application/json")

		public String register(@PathVariable String username,@PathVariable String email,@PathVariable String password,@PathVariable String mobileno){
		System.out.println("welcome");
		Chat chat=new Chat();
		chat.setUsername(username);
		chat.setEmail(email);
		chat.setPassword(password);
		chat.setMobileno(mobileno);
		 
		ud.save(chat);
		
		return "login";
	}
	
	
	@RequestMapping("/login")
	public ModelAndView gotologin(){
	return new ModelAndView("login");
	}
	}

	
