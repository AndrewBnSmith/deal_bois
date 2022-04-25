package com.andrew.dealbois.controllers;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.andrew.dealbois.models.LoginUser;
import com.andrew.dealbois.models.User;
import com.andrew.dealbois.services.UserService;

@Controller
public class UserController {

		 @Autowired
		 private UserService userServ;
	    
	    @GetMapping("/")
	    public String register(
	    		Model model
		) {
	       
	        model.addAttribute("newUser", new User());
	        model.addAttribute("newLogin", new LoginUser());
	        return "register.jsp";
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
	            return "register.jsp";
	        }
	      
	        session.setAttribute("user_id", registeredUser.getId());
	        return "redirect:/dashboard";
	    }
	    
	    @GetMapping("login")
	    public String login(
	    		Model model
		) {
	       
	        model.addAttribute("newUser", new User());
	        model.addAttribute("newLogin", new LoginUser());
	        return "login.jsp";
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
	            return "index.jsp";
	        }
	     
	        session.setAttribute("user_id", user.getId());
	        return "redirect:/dashboard";
	    }
	    
	    @RequestMapping("/logout")
	      public String logout(HttpSession session ) {
	         session.invalidate();
	         return "redirect:/";
	      }

	      
	    
	    
	
}