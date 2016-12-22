package com.backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AddressDetails {

@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int address_Id;
private int home_No;
private int street_No;
private String city;
private String state;
private int pincode;



public int getAddress_Id() {
	return address_Id;
}
public void setAddress_Id(int address_Id) {
	this.address_Id = address_Id;
}
public int getHome_No() {
	return home_No;
}
public void setHome_No(int home_No) {
	this.home_No = home_No;
}
public int getStreet_No() {
	return street_No;
}
public void setStreet_No(int street_No) {
	this.street_No = street_No;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}


}
