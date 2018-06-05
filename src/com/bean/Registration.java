package com.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table
public class Registration 
{

@GeneratedValue
private int id;
private String name;
private String password;
@Id
private String emailid;
private String address;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}




}