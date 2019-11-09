package com.nmcnpm.web.model;

import lombok.Data;

@Data
public class Customer extends BaseModel{
	private Long customerID;
	private String name;
	private String email;
	private Long phone;
	private String address;
	private String cityRegion;
}
