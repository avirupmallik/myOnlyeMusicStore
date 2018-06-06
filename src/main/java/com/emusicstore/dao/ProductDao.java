package com.emusicstore.dao;

import java.util.ArrayList;
import java.util.List;

import com.emusicstore.model.Product;

public class ProductDao {

	private List<Product> productList;
	
	public List<Product> getProductList(){
		
		Product product1 = new Product();
		product1.setProductCategory("Instrument");
		product1.setProductCondition("New");
		product1.setProductDescription("Guiter");
		product1.setProductManufacturer("New India");
		product1.setProductName("Guiter");
		product1.setProductPrice(200.0);
		product1.setProductStatus("Available");
		product1.setUnitInStock(2);
		
		Product product2 = new Product();
		product2.setProductCategory("Instrument");
		product2.setProductCondition("New");
		product2.setProductDescription("Tabla");
		product2.setProductManufacturer("New India");
		product2.setProductName("Tabla");
		product2.setProductPrice(500.0);
		product2.setProductStatus("Available");
		product2.setUnitInStock(2);
		
		productList = new ArrayList<Product>();
		productList.add(product1);
		productList.add(product2);
		return productList;
		
	}
}
