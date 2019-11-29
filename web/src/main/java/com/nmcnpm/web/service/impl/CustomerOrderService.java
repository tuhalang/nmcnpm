package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.*;
import com.nmcnpm.web.service.ICustomerOrderService;
import com.nmcnpm.web.service.ICustomerService;

import javax.inject.Inject;
import java.util.List;

public class CustomerOrderService implements ICustomerOrderService {
    @Inject
    ICustomerOrderDAO customerOrderDAO;

    @Override
    public Long save(List<OrderedProduct> order, Customer customer) {
        try{
            CustomerOrder customerOrder = new CustomerOrder();
            Long tmp = 0L;
            for (OrderedProduct orderedProduct : order) {
                tmp += orderedProduct.getProduct().getPrice();
            }
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
