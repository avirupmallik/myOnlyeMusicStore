package com.emusicstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		return productDao.getProductList();
	}

	
	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return productDao.getProductById(id);
	}

	@Override
	public void addProduct(Product product) {
		
		productDao.addProduct(product);
	}

	@Override
	public void editProduct(Product product) {
		
		productDao.editProduct(product);
		
	}

	@Override
	public void deleteProduct(Product product) {
		
		productDao.deleteProduct(product);
	}

}
