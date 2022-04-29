package com.andrew.dealbois.controllers;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.andrew.dealbois.models.LoginUser;
import com.andrew.dealbois.models.Product;
import com.andrew.dealbois.models.ProductFaker;
import com.andrew.dealbois.models.User;
import com.andrew.dealbois.services.UserService;
import com.andrew.dealbois.services.ProductService;

@Controller
public class UserController {

		 @Autowired
		 private UserService userServ;
		 @Autowired
		 private ProductService productServ;
	       
	    @GetMapping("/")
	    public String mainPage(Model model) {
	    	List<Product> allProducts = productServ.getAllProducts();
			model.addAttribute("products", allProducts);
	        return "index.jsp";
	    }
	    
	    @GetMapping("/affiliatePage")
	    public String affiliatePage() {
	    
	        return "affiliate.jsp";
	    }
	    
	    @GetMapping("/contact")
	    public String contactUs() {
	    
	        return "contact.jsp";
	    }
	    
	    @PostMapping("/register")
	    public String register(
	    		@Valid @ModelAttribute("newUser") User newUser, 
	            BindingResult result,
	            Model model, HttpSession session
	    ) {
	        
	  
	    	User registeredUser = userServ.register(newUser, result);
	        
	        if(result.hasErrors()) {
	          
	            model.addAttribute("newLogin", new LoginUser());
	            return "login_reg.jsp";
	        }
	      
	        session.setAttribute("user_id", registeredUser.getId());
	        return "redirect:/account";
	    }
	    
	    @GetMapping("/login")
	    public String login(
	    		Model model
		) {
	       
	        model.addAttribute("newUser", new User());
	        model.addAttribute("newLogin", new LoginUser());
	        List<Product> allProducts = productServ.getAllProducts();
			
			model.addAttribute("products", allProducts);
	        return "login_reg.jsp";
	    }
	    
	    @PostMapping("/login")
	    public String login(
	    		@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
	            BindingResult result, 
	            Model model, HttpSession session
	    ) {
	        
	     
	        User user = userServ.login(newLogin, result);
	    
	        if(result.hasErrors()) {
	            model.addAttribute("newUser", new User());
	            return "login_reg.jsp";
	        }
	     
	        session.setAttribute("user_id", user.getId());
	        
	        return "redirect:/account";
	    }
	    
	    @GetMapping("/account")
		public String dashboard(HttpSession session, Model model) {
		
			if(session.getAttribute("user_id") == null) {
				return "redirect:/";
			}
			
			Long user_id = (Long) session.getAttribute("user_id");
			User loggedUser = userServ.getOneUser(user_id);						
			model.addAttribute("user", loggedUser);
			  List<Product> allProducts = productServ.getAllProducts();
				
				model.addAttribute("products", allProducts);
		
			return "account.jsp";
		}
	    
	    @GetMapping("/users/{id}")
		public String myAccount(@PathVariable("id") Long id, Model model, HttpSession session) {
		
			if(session.getAttribute("user_id") == null) {
				return "redirect:/";
			}
			User oneUser = userServ.getOneUser(id);
			
			model.addAttribute("user", oneUser);
			return "myAccount.jsp";
		}
		
	    
	    @RequestMapping("/logout")
	      public String logout(HttpSession session ) {
	         session.invalidate();
	         return "redirect:/";
	      }
	    
	    @GetMapping("/browse")
	    public String browsePage(Model model) {
	    	List<Product> allProducts = productServ.getAllProducts();
			model.addAttribute("products", allProducts);
	        return "browse.jsp";
	    }

	      
	    
	    
	
}