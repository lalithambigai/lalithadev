package com.backend.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart {
	
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int cartId;
	
	@OneToOne
	@JoinColumn(name="userid")
	private User user;
	
	
	
	
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Item> getItem() {
		return Item;
	}

	public void setItem(List<Item> item) {
		Item = item;
	}

	@OneToMany
	@JoinColumn(name="ItemId")
	private List<Item> Item;
	
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	
	
	

}
