package com.andrew.dealbois.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andrew.dealbois.models.Product;
import com.andrew.dealbois.repositories.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepo;

	public Product save(Product productObj) {
		return productRepo.save(productObj);
	}

	public List<Product> getAllProducts(){
		return productRepo.findAll();
	}
	
	public Product getOneProduct(Long id) {
		return productRepo.findById(id).orElse(null);
	}
	
	public void deleteOneProduct(Long id) {
		productRepo.deleteById(id);
	}
}