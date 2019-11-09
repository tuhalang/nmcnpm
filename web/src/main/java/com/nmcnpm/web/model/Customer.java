package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class Customer extends BaseModel{
	private Long customerID;
	private String name;
	private String email;
	private Long phone;
	private String address;
	private String cityRegion;
}
