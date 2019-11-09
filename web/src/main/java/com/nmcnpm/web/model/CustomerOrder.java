package com.nmcnpm.web.model;


import lombok.Data;

@Data
public class CustomerOrder extends BaseModel{
	private Long orderID;
	private Long amount;
	private Long confirmNumber;


}
