package com.nmcnpm.web.model;

import java.util.Date;

public class CustomerOrder extends BaseModel{
	private Long orderID;
	private Long amount;
	private Date dateCreated;
	private Long confirmNumber;
	public Long getOrderID() {
		return orderID;
	}
	public void setOrderID(Long orderID) {
		this.orderID = orderID;
	}
	public Long getAmount() {
		return amount;
	}
	public void setAmount(Long amount) {
		this.amount = amount;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	public Long getConfirmNumber() {
		return confirmNumber;
	}
	public void setConfirmNumber(Long confirmNumber) {
		this.confirmNumber = confirmNumber;
	}
	
}
