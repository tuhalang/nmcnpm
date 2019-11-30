package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
public class OrderedProduct extends BaseModel{
	private Long orderID;
	private Long productID;
	private Long quantity;
	private Product product;

	public OrderedProduct(Long orderID, Long productID, Long quantity) {
		this.orderID = orderID;
		this.productID = productID;
		this.quantity = quantity;
	}

	public OrderedProduct(Date createdAt, Date lastModifiedAt, Long orderID, Long productID, Long quantity) {
		super(createdAt, lastModifiedAt);
		this.orderID = orderID;
		this.productID = productID;
		this.quantity = quantity;
	}

	public OrderedProduct(){
		this.orderID = 1L;
		this.productID = 1L;
		this.quantity = 1L;
	}
}
