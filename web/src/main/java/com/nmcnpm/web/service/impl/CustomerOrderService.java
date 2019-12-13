package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.*;
import com.nmcnpm.web.service.ICustomerOrderService;
import com.nmcnpm.web.service.ICustomerService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class CustomerOrderService implements ICustomerOrderService {
    @Inject
    ICustomerOrderDAO customerOrderDAO;
    @Inject
    IOrderedProductDAO orderedProductDAO;
    @Inject
    IProductDAO productDAO;

    @Inject
    ICustomerDAO customerDAO;
    @Override
    public Long save(List<OrderedProduct> order, Customer customer) {
        try{
            CustomerOrder customerOrder = new CustomerOrder();
            Long tmp = 0L;
            for (OrderedProduct orderedProduct : order) {
                tmp += orderedProduct.getProduct().getPrice() * orderedProduct.getQuantity();
            }
            customer.setCustomerID(customer.getCustomerID());
            customerOrder.setAmount(tmp);
            customerOrder.setPaymentMethod(PaymentMethod.COD);
            customerOrder.setOrderStatus(OrderStatus.RECEIVED);
            customerOrder.setConfirmNumber(1234567L);
            Long id = customerOrderDAO.insert(customerOrder, customer.getCustomerID());
            return id;
        }catch (Exception e){
            e.printStackTrace();
            return -1L;
        }
    }
}
