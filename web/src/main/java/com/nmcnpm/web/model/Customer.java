package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
public class Customer extends BaseModel{
	private Long customerID;
	private String name;
	private String email;
	private Long phone;
	private String address;
	private String cityRegion;

	public Customer(Long customerID, String name, String email, Long phone, String address, String cityRegion) {
		this.customerID = customerID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.cityRegion = cityRegion;
	}

	public Customer(Date createdAt, Date lastModifiedAt, Long customerID, String name, String email, Long phone, String address, String cityRegion) {
		super(createdAt, lastModifiedAt);
		this.customerID = customerID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.cityRegion = cityRegion;
	}

	public Customer(){
		this.customerID = 1L;
		this.name = "";
		this.email = "";
		this.phone = 0L;
		this.address = "";
		this.cityRegion = "";
	}
}
