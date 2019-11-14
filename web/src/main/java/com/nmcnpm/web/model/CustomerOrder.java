package com.nmcnpm.web.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

@Data
public class CustomerOrder extends BaseModel{
	private Long orderID;
	private Long amount;
	private Long confirmNumber;
	private PaymentMethod paymentMethod;
	private OrderStatus orderStatus;

	public CustomerOrder(Long orderID, Long amount, Long confirmNumber, PaymentMethod paymentMethod, OrderStatus orderStatus) {
		this.orderID = orderID;
		this.amount = amount;
		this.confirmNumber = confirmNumber;
		this.paymentMethod = paymentMethod;
		this.orderStatus = orderStatus;
	}

	public CustomerOrder(Date createdAt, Date lastModifiedAt, Long orderID, Long amount, Long confirmNumber, PaymentMethod paymentMethod, OrderStatus orderStatus) {
		super(createdAt, lastModifiedAt);
		this.orderID = orderID;
		this.amount = amount;
		this.confirmNumber = confirmNumber;
		this.paymentMethod = paymentMethod;
		this.orderStatus = orderStatus;
	}

	public CustomerOrder(){}
}
