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

import com.backend.dao.Categorydao;
import com.backend.dao.Productdao;
import com.backend.model.Category;
import com.backend.model.Product;



	@Controller
	public class Categorycontroller {
	
		private Categorydao cd;
	
		
		

	  
		{
			@SuppressWarnings("resource")
	        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
	        appobj.scan("com.backend.configuration");
			appobj.refresh();
			cd=(Categorydao) appobj.getBean("cdao");
		} 
	
	@RequestMapping(value = "category",method = RequestMethod.GET)
	public String prod1(Model model)
	{
		 Category category = new Category();
		 model.addAttribute("prod",category);

		//	model.addAttribute("lali");
			
		
			return "category";
			
		} 
		 

	@RequestMapping(value ="/productcheck1",method = RequestMethod.POST)
	public String prod2(@ModelAttribute(value="prod")Category category,ModelMap model )
	{
		 cd.save(category);
			return "redirect:Categorylist"; 
		 
	} 
	
	
	

//	@RequestMapping(value ="/cate",method = RequestMethod.POST)
//	public String prodd(@ModelAttribute(value="prod")Category category,ModelMap model )
//	{
//		 cd.save(category);
//			return "redirect:Categorylist"; 
//		 
//	} 
	
	@RequestMapping(value ="/Categorylist")
	public ModelAndView gotolist()
	{
		
		List<Category> ob=cd.list1();
		return new ModelAndView("Categorylist","lali",ob);
	}
		
		
		

		 
		@RequestMapping("/getcategorybyid/{cid}")
		 public ModelAndView pos(@PathVariable(value="cid")int cid)
		 {
			Category cat=cd.getcategorybyid(cid);
			return new ModelAndView("productpagee","showobjj",cat);
		 }
		 
		 
		 
		 @RequestMapping("/admin/category/delete/{cid}")
		 public String deletecategorybyid(@PathVariable(value="cid")int cid)
		 {
			 cd.delete(cid);
			return "redirect:/Categorylist";
		 }
		 
		 
		 
		 @RequestMapping("/admin/category/editCategory/{cid}")
		 public ModelAndView editCategoryform(@PathVariable(value="cid")int cid)
		 {
			 Category prod3 = this.cd.getcategorybyid(cid);
			 return new ModelAndView("editCategoryform","editcategoryobj",prod3);
		 }   
		 
		 
		 
		 @RequestMapping(value="/admin/category/editCategorybyid/",method = RequestMethod.POST)
		 public String edit(@ModelAttribute(value="editcategoryobj")Category cid)
		 {
			 cd.update(cid);
			 return "redirect:/Categorylist";
		 }
	}
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
	/*@RequestMapping("/Category")
	public ModelAndView gotoCategory(@ModelAttribute("cat") Category cat,ModelMap m) {
		List categoryLt = categoryService.getList();
		m.addAttribute("priy",categoryLt);
		
		List categoryList = categoryService.getList();
		return new ModelAndView("Category", "CategoryList", categoryList);
		
	}	 */ 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
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


