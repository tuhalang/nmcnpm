package com.nmcnpm.web.model;

import lombok.Data;

@Data
public class OrderedProduct extends BaseModel{
	private Long orderID;
	private Long productID;
	private Long quantity;
}
