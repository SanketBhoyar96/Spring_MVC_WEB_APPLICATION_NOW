package com.soft.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User_Details")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	private String Name;
	private String Address;
	private String PhoneNo;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int iD, String name, String address, String phoneNo) {
		super();
		ID = iD;
		Name = name;
		Address = address;
		PhoneNo = phoneNo;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", Name=" + Name + ", Address=" + Address + ", PhoneNo=" + PhoneNo + "]";
	}

	
}
