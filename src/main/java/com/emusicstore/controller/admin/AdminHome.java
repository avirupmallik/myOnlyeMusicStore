package com.emusicstore.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.emusicstore.model.Customer;
import com.emusicstore.model.Product;
import com.emusicstore.service.CustomerService;
import com.emusicstore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/")
	private String adminPage() {
		return "admin";
	}

	@RequestMapping("/productInventory")
	private String productInventory(Model model)
	{
		List<Product> products= productService.getProductList();
		model.addAttribute("products",products);
		return "productInventory";
	}
	
	@RequestMapping("/customer")
	public String customerManagement(Model model) {
		List<Customer> customerList=customerService.getAllCustomer();
		model.addAttribute("customerList", customerList);
		return "customerManagement";
	}
}
