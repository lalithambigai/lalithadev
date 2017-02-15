package com.welcome.Controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.CartDao;
import com.backend.dao.Productdao;
import com.backend.dao.UserDao;
import com.backend.model.Cart;
import com.backend.model.Product;
import com.backend.model.User;


@Controller
public class Cartcontroller {
  
	   private CartDao cd;
		
	 public CartDao getCd() {
		return cd;
	}
     public void setCd(CartDao cd) {
		this.cd = cd;
	}

	
	
	public  Cartcontroller()
	{
		AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext(); 
		appobj.scan("com.backend.configuration");
		appobj.refresh();
		CartDao cd=(CartDao)appobj.getBean("ccdao");

	}

	
@RequestMapping(value = "addcartt",method = RequestMethod.GET)
public String prod1(Model model)
{
	 Cart cart = new Cart();
	 model.addAttribute("lallii",cart);
	 return "addcartt";
	 
}



@RequestMapping(value = "/addUserr", method = RequestMethod.POST)
public String print(@ModelAttribute(value="lallii")Cart cart,  ModelMap model) {
	

	
   cd.save(cart);
   return "redirect:/cot"; 
	 
} 

	
	


@RequestMapping(value = "/cot")
public ModelAndView gotolist()
{
	List<Cart> ob=cd.list1();
	return new ModelAndView("cot","lobj",ob);
}
		

@RequestMapping("/getcartbyid") 
public ModelAndView pos(HttpServletRequest request) 
	{
		int cartitem_id=Integer.parseInt(request.getParameter("cartitem_id"));
			Cart cr=cd.getcartbyid(cartitem_id);
			return new ModelAndView("productpage1","showobj",cr);
		 	
	}
@RequestMapping("/admin/cart/delete/{cid}")
public String deleteproductbyid(@PathVariable(value="cartitem_id")int cartitem_id)
{
	 cd.delete(cartitem_id);
	return "redirect:/cot";
}






@RequestMapping(value="/cart",method=RequestMethod.GET)

public ModelAndView viewlist(HttpServletRequest req) {
		List<Cart> lis=cd.list1(req.getParameter("cott"));
		ModelAndView pro=new ModelAndView("cart");
		pro.addObject("prott",lis);
		
		System.out.println(lis);
	   return pro;
	    
	   }
}
