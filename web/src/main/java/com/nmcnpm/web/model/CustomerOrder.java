package com.nmcnpm.web.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
public class CustomerOrder extends BaseModel {
    private Long orderID;
    private Long amount;
    private Long confirmNumber;
    private PaymentMethod paymentMethod;
    private OrderStatus orderStatus;
    private Long customerID;

    private Customer customer;
    private List<OrderedProduct> orderedProducts;

    public CustomerOrder(Long orderID, Long amount, Long confirmNumber, PaymentMethod paymentMethod, OrderStatus orderStatus, Long customerID) {
        this.orderID = orderID;
        this.amount = amount;
        this.confirmNumber = confirmNumber;
        this.paymentMethod = paymentMethod;
        this.orderStatus = orderStatus;
        this.customerID = customerID;
    }

    public CustomerOrder(Date createdAt, Date lastModifiedAt, Long orderID, Long amount, Long confirmNumber, PaymentMethod paymentMethod, OrderStatus orderStatus, Long customerID) {
        super(createdAt, lastModifiedAt);
        this.orderID = orderID;
        this.amount = amount;
        this.confirmNumber = confirmNumber;
        this.paymentMethod = paymentMethod;
        this.orderStatus = orderStatus;
        this.customerID = customerID;
    }

    public CustomerOrder() {
        this.orderID = -1L;

        this.amount = 0L;
        this.confirmNumber = 0L;
        this.paymentMethod = PaymentMethod.COD;
        this.orderStatus = OrderStatus.RECEIVED;
        this.customerID = -1L;

    }
}
