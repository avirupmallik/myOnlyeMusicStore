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
		product1.setProductName("Awesome");
		product1.setProductPrice(200.0);
		product1.setProductStatus("Available");
		product1.setUnitInStock(2);
		productList = new ArrayList<Product>();
		productList.add(product1);
		return productList;
		
	}
}
