package  com.welcome.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.Productdao;
import com.backend.dao.UserDao;
import com.backend.model.Product;
import com.backend.model.User;


@Controller
public class Homecontroller {
	HttpSession session; 
	UserDao ud;
	
	
	
	public Homecontroller()
	{
		AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext(); 
		appobj.scan("com.backend.configuration");
		appobj.refresh();
		ud=(UserDao)appobj.getBean("udao");
		 
	}
	
	@RequestMapping("/")
	public String helloWorld(){
	return "index";
	}
	
	@RequestMapping("/index")
	public String home(){
	return "index";
	}
	
	
	
	@RequestMapping("/LIPSTICK")
	public ModelAndView gotocate(){
	return new ModelAndView("LIPSTICK");
		
	}
	
	@RequestMapping("/check")
public ModelAndView gotosignup(){
	return new ModelAndView("check");	
	}

	@RequestMapping("/Signin")
	
    public ModelAndView register(HttpServletRequest req)throws ServletException,IOException
	{
		session=req.getSession(true);
		String s= req.getParameter("username");
		String p=req.getParameter("password");
		List<User>list2=ud.list2(s,p);
		System.out.println(s);
		System.out.println(p);
		System.out.println(list2);
		ModelAndView t=new ModelAndView();
				
		
		if(!list2.isEmpty())
		{
		for(int i=0;i<list2.size();i++)
		{
			if(s.equals(list2.get(i).getUsername())&&(p.equals(list2.get(i).getPassword())))
			{
	 	if(list2.get(i).getRoleId().equals("ADMIN_ROLE"))
		{
     	System.out.println(list2.get(i).getUsername());
        session.setAttribute("name", list2.get(i).getUsername());
        t.setViewName("ADMIN");
	     }
     	else 
     	{
         /*	if(list2.get(i).getRoleId().equals("USER_ROLE"))*/
  
    	session.setAttribute("name", list2.get(i).getUsername());
    	t.setViewName("index");
    	}
	    }}}
		else
		{
		t.setViewName("LOGIN");
		System.out.println("invalid details");
		}
		return t;
        }
	
	
	
	@RequestMapping("/LOGIN")
	public ModelAndView gotologin(){
	return new ModelAndView("LOGIN");
	}

	
	@RequestMapping("/ADMIN")
	public ModelAndView gotoadd(){
	return new ModelAndView("ADMIN");
	 	
	}
	
	
	 @RequestMapping(value = "/addUsers", method = RequestMethod.GET)
	   public String printform(Model model) {
		   User user  = new User();
		   System.out.println("12344444");
		   model.addAttribute("lalli", user);
	      return "check"; 
	   }
	   

	   
	  @RequestMapping(value = "/addUser", method = RequestMethod.POST)
	   public String printform1(@ModelAttribute(value="lalli")User user,  ModelMap model) {
	      ud.save(user);
	       return "LOGIN";
	       }
	  
	     @RequestMapping(value = "/loginenter", method = RequestMethod.POST)
	   public String printform22(@ModelAttribute(value="lalli")User user,  ModelMap model) {
	
	            return "index";

	   }
	 	@RequestMapping("/logout")
		public String logout(){
		session.invalidate();
		return "index";
		}
}	   
	   




























































/*@RequestMapping("/lllllll")
public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
{
	
	if(error!=null)
	{
		model.addAttribute("error","Invalid credentials to enter");
	}
	if(logout!=null)
	{
		model.addAttribute("msg", "You logged out successfully...");
	}
	return  "LOGIN";
	}
*/

/*	   @ModelAttribute("User")
public User createModel(){
	   return new User();
	  
}*/	   

	

	
//	@RequestMapping("/User")
	//public ModelAndView gotouser(){
	//return new ModelAndView("User");
	
	

