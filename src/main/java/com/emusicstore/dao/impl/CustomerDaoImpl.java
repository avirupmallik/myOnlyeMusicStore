package com.emusicstore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.emusicstore.dao.CustomerDao;
import com.emusicstore.model.Authorities;
import com.emusicstore.model.Cart;
import com.emusicstore.model.Customer;
import com.emusicstore.model.Product;
import com.emusicstore.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	
	
	@Autowired
	private SessionFactory sessionFactory;


	
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);
		session.saveOrUpdate(customer);
		session.saveOrUpdate(customer.getBillingAddress());
		session.saveOrUpdate(customer.getShippingAddress());
		
		Users newUser= new Users();
		newUser.setUsername(customer.getUsername());
		newUser.setPassword(customer.getPassword());
		newUser.setEnabled(true);
		newUser.setCustomerId(customer.getCustomerId());
		
		
		Authorities newAuthority = new Authorities();
		newAuthority.setAuthority("ROLE_USER");
		newAuthority.setUsername(customer.getUsername());
		session.saveOrUpdate(newUser);
		
		session.saveOrUpdate(newAuthority);
		//session.getTransaction().commit();
		
		Cart newCart = new Cart();
		newCart.setCustomer(customer);
		customer.setCart(newCart);
		session.saveOrUpdate(customer);
		session.saveOrUpdate(newCart);
		
		session.flush();
	}

	
	public Customer getCustomerById(int customerId) {
		Session session = sessionFactory.getCurrentSession();
		return (Customer)session.get(Customer.class, customerId);
	}

	@Override
	public List<Customer> getAllCustomer() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList= query.list();
		session.flush();
		return customerList;
	}


	@Override
	public Customer getCustomerByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where username=?");
		query.setString(0, username);
		return (Customer)query.uniqueResult();
	}

}
