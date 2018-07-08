package com.emusicstore.service;

import com.emusicstore.model.Cart;

public interface CartService {
	
	Cart getCartById(int cartId);
	
	void updateCart(Cart cart);

}
