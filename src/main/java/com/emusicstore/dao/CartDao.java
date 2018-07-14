package com.emusicstore.dao;

import java.io.IOException;

import com.emusicstore.model.Cart;

/**
 * Created by Le on 1/11/2016.
 */
public interface CartDao {

Cart getCartById(int cartId);
	Cart validate(int cartId) throws IOException;
	void updateCart(Cart cart);}
