package com.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)

private int customer_Id;
private String  customer_Name;
private String customer_Email;
private int customer_Number;
private String address_Details;


public int getCustomer_Id() {
	return customer_Id;
}
public void setCustomer_Id(int customer_Id) {
	this.customer_Id = customer_Id;
}
public String getCustomer_Name() {
	return customer_Name;
}
public void setCustomer_Name(String customer_Name) {
	this.customer_Name = customer_Name;
}
public String getCustomer_Email() {
	return customer_Email;
}
public void setCustomer_Email(String customer_Email) {
	this.customer_Email = customer_Email;
}
public int getCustomer_Number() {
	return customer_Number;
}
public void setCustomer_Number(int customer_Number) {
	this.customer_Number = customer_Number;
}
public String getAddress_Details() {
	return address_Details;
}
public void setAddress_Details(String address_Details) {
	this.address_Details = address_Details;
}




}
