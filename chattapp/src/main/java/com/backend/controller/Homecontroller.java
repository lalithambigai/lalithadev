package com.backend.controller;



import java.util.ArrayList;
import java.util.List;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import com.backend.dao.UserDao;
import com.backend.model.Chat;
import com.backend.model.blog;

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

		public ResponseEntity<Chat> register(@PathVariable String username,@PathVariable String email,@PathVariable String password,@PathVariable String mobileno){
		System.out.println("welcome");
		Chat chat=new Chat();
		System.out.println("welcome1");
		chat.setUsername(username);
		chat.setEmail(email);
		chat.setPassword(password);
		chat.setMobileno(mobileno);
		 ud.save(chat);
		 return new ResponseEntity<Chat>(HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/login/{username}/{password}",method=RequestMethod.POST,headers="Accept=application/json")

		public ResponseEntity<Chat> login(@PathVariable String username,@PathVariable String password){
		System.out.println("controller");
		List<Chat> chat=new ArrayList<Chat>();
		chat = ud.list(username, password);
		if(chat.isEmpty())
		{
		System.out.println("invalid details");
		return new ResponseEntity<Chat>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		else
		{
		System.out.println("valid details");
	    return new ResponseEntity<Chat>(HttpStatus.OK);
		}
		}
		
		@RequestMapping("blog")
		public ResponseEntity<blog>gotoblog(@ModelAttribute("bg") blog bg,Model m)
		{System.out.println("controller");
		List<blog> blog=new ArrayList<blog>();
		
		{
		System.out.println("blog");
		return new ResponseEntity<blog>(HttpStatus.OK);
		
		}

		
		
		
		
	
	
	}}
	

	
