package com.welcome.Controller;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.Productdao;
import com.backend.model.Product;



@Controller
public class Admincontroller 
{
	private Productdao pd;
	private int pid;

    public Productdao getPd() {
		return pd;
	}
    public void setPd(Productdao pd) {
		this.pd = pd;
	}
	public Admincontroller()
	{
		@SuppressWarnings("resource")
        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
        appobj.scan("com.backend.configuration");
		appobj.refresh();
		pd=(Productdao) appobj.getBean("pdao");
	} 
	
@RequestMapping(value = "add",method = RequestMethod.GET)
public String prod1(Model model)
{
	 Product product = new Product();
	 model.addAttribute("prod",product);
	 return "add";
	 
}

@RequestMapping(value ="/productcheck",method = RequestMethod.POST)
public String prod2(@ModelAttribute(value="prod")Product product,ModelMap model )
{
	 pd.save(product);
		return "redirect:/listpage"; 
	 
} 





		 
@RequestMapping(value = "/listpage")
public ModelAndView gotolist()
{
	
	List<Product> ob=pd.list1();
	return new ModelAndView("listpage","lobj",ob);
}
	
	
	

	 
	@RequestMapping("/getproductbyid/{pid}")
	 public ModelAndView pos(@PathVariable(value="pid")int pid)
	 {
		Product pr=pd.getproductbyid(pid);
		return new ModelAndView("productpage","showobj",pr);
	 }
	 
	 
	 
	 @RequestMapping("/admin/product/delete/{pid}")
	 public String deleteproductbyid(@PathVariable(value="pid")int pid)
	 {
		 pd.delete(pid);
		return "redirect:/listpage";
	 }
	 
	 
	 
	 @RequestMapping("/admin/product/editProduct/{pid}")
	 public ModelAndView editProductform(@PathVariable(value="pid")int pid)
	 {
		 Product prod3 = this.pd.getproductbyid(pid);
		 return new ModelAndView("editProductform","editproductobj",prod3);
	 }   
	 
	 
	 
	 @RequestMapping(value="/admin/product/editProductbyid/",method = RequestMethod.POST)
	 public String edit(@ModelAttribute(value="editproductobj")Product pid)
	 {
		 pd.update(pid);
		 return "redirect:/listpage";
	 }
}
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
/*@RequestMapping(value = "/add",method = RequestMethod.GET)
public int prod1(Model model)
{
	 Product product = new Product();
	 model.addAttribute("prod",product);
	 return "add";
}
@RequestMapping(value ="/productcheck",method = RequestMethod.POST)
public int prod2(@ModelAttribute(value="prod")Product product,ModelMap model )
{
	 pd.save(product);
	 return "index";*/ 
	 
	 
	 
	 
	 
	 
/*@RequestMapping(value = "/listproducts")
public ModelAndView listallproduct()
{
	List<Product> ob=pd.list1();
	return new ModelAndView("List","prod",ob);
}
@RequestMapping("/getproductbyid/{productid}")
public ModelAndView	list(@PathVariable(value="productid")int pid)
{
	Product pr=pd.prodByName(pid);
	return new ModelAndView("Prodes","des",pr);
	}
	

@RequestMapping()
public int deletebyid(@PathVariable("pid")int pid)
{
	Product ob=pd.getproductsbyid
			
			
			
			
			
			
			
			
			
			
	@RequestMapping("/adminedit/{product}")
	public ModelAndView edit(@PathVariable(value="productid")int productid)
	{
		Product product=this.pd.getproductsbyid(productid);
		return  new ModelAndView("editproductobj","editproductbyobj","product");
	}
	@RequestMapping(value ="", method= RequestMethod.POST)
	public int edits(@Modelattribute(value="editproductbyobj")Product 
			{
		pd.update(product);
			}
	
}
*/			