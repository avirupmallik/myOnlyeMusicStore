package com.emusicstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emusicstore.dao.CustomerOrderDao;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.CustomerOrder;
import com.emusicstore.service.CartService;
import com.emusicstore.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	@Autowired
	private CartService cartService;
	

	@Override
	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	@Override
	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal=0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems= cart.getCartItems();
		for(CartItem c:cartItems) {
			grandTotal+=c.getTotalPrice();
		}
		return grandTotal;
	}
}
