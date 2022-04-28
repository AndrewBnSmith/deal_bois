package com.andrew.dealbois.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	@GetMapping("/browse")
	public String browse() {
		return "browse.jsp";
	}
}
