package com.muhib.sd2.vaccineRegistration.bean;

public class Entity {

	private int nid;
	private String name;
	private String gender;
	private String dob;
	private int contact;
	private String address;
	private String center;
	
	
	public Entity() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Entity(int nid, String name, String gender, String dob, int contact, String address, String center) {
		super();
		this.nid = nid;
		this.name = name;
		this.gender = gender;
		this.dob = dob;
		this.contact = contact;
		this.address = address;
		this.center = center;
	}
	
	


	public Entity(String name, String gender, String dob, int contact, String address, String center) {
		super();
		this.name = name;
		this.gender = gender;
		this.dob = dob;
		this.contact = contact;
		this.address = address;
		this.center = center;
	}


	public int getNid() {
		return nid;
	}


	public void setNid(int nid) {
		this.nid = nid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public int getContact() {
		return contact;
	}


	public void setContact(int conact) {
		this.contact = conact;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCenter() {
		return center;
	}


	public void setCenter(String center) {
		this.center = center;
	}


	@Override
	public String toString() {
		return "Entity [nid=" + nid + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", contact=" + contact
				+ ", address=" + address + ", center=" + center + "]";
	}
	
	
	
}
