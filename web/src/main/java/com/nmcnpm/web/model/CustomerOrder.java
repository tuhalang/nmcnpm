package com.nmcnpm.web.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class CustomerOrder extends BaseModel{
	private Long orderID;
	private Long amount;
	private Long confirmNumber;


}
