package com.nmcnpm.web.model;

import java.util.Date;
import lombok.Data;

@Data
public class Customer extends BaseModel{
	private Long customerID;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String cityRegion;
        private Long accountID;
        
        private Account account;

	public Customer(Long customerID, String name, String email, String phone, String address, String cityRegion, Long accountId) {
		this.customerID = customerID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.cityRegion = cityRegion;
                this.accountID = accountId;
	}

	public Customer(Date createdAt, Date lastModifiedAt, Long customerID, String name, String email, String phone, String address, String cityRegion, Long accountID) {
		super(createdAt, lastModifiedAt);
		this.customerID = customerID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.cityRegion = cityRegion;
                this.accountID = accountID;
	}

	public Customer(){
		this.customerID = -1L;
		this.name = "";
		this.email = "";
		this.phone = "";
		this.address = "";
		this.cityRegion = "";
                this.accountID = -1L;
	}
}
