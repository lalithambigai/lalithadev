package com.backend.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;




@Entity
@Table(name = "PRODUCT")

public class Product
{

@GeneratedValue(strategy=GenerationType.AUTO)
@Id
private int pid;

@NotEmpty
@Size(min=5,max=20)
private String pname;

@NotEmpty
@Size(min=5,max=20)

private String pdesc;
@NotNull
@Min(100)

private int price;

@NotNull
@Min(10)
private int quantity;
private String category;
@Transient
private MultipartFile files;
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}

public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getPdesc() {
	return pdesc;
}
public void setPdesc(String pdesc) {
	this.pdesc = pdesc;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public MultipartFile getFiles() {
	return files;
}
public void setFiles(MultipartFile files) {
	this.files = files;
}

}
