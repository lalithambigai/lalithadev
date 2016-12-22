package com.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Cart {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
	
private int cart_Id;

private double total;
	
public int getCart_Id() {
	return cart_Id;
}
public void setCart_Id(int cart_Id) {
	this.cart_Id = cart_Id;
}
public double getTotal() {
	return total;
}
public void setTotal(double total) {
	this.total = total;
}
}
