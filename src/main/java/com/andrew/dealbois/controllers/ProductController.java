package com.andrew.dealbois.controllers;

import java.util.List;

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
import org.springframework.web.bind.annotation.PutMapping;

import com.andrew.dealbois.models.Product;
import com.andrew.dealbois.models.User;
import com.andrew.dealbois.services.ProductService;
import com.andrew.dealbois.services.UserService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productServ;
	
	@Autowired
	private UserService userServ;
	
	
	// ---------------- CREATE ------------------//
	@GetMapping("/products/new")
	public String newProduct(@ModelAttribute("productObj") Product emptyProduct) {
	
		return "new.jsp";
		}
		
		
	
	
	@PostMapping("/products/new")
	public String createProduct(
			@Valid @ModelAttribute("productObj") Product filledProduct,
			BindingResult results
	) {
	
		if(results.hasErrors()) {
			
			return "new.jsp";
		}
		else {
		
			productServ.save(filledProduct);
			return "redirect:/dashboard";
		}
	}
	
	// ---------------- CREATE ------------------//
	
	
	
	
}