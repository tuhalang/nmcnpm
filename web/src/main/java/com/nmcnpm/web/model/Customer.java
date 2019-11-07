package com.nmcnpm.web.model;

public class Customer extends BaseModel{
	private Long customerID;
	private String name;
	private String email;
	private Long phone;
	private String address;
	private String cityRegion;
	public Long getCustomerID() {
		return customerID;
	}
	public void setCustomerID(Long customerID) {
		this.customerID = customerID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCityRegion() {
		return cityRegion;
	}
	public void setCityRegion(String cityRegion) {
		this.cityRegion = cityRegion;
	}
	
}
