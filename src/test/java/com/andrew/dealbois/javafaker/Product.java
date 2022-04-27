package com.andrew.dealbois.javafaker;

import java.util.Locale;

import com.github.javafaker.Faker;

public class Product {
	
	Faker faker = new Faker(new Locale("en-US"));

	String productName = faker.commerce().productName();
	String price = faker.commerce().price(0, 1000);
	
	public Faker getFaker() {
		return faker;
	}
	public void setFaker(Faker faker) {
		this.faker = faker;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

}
