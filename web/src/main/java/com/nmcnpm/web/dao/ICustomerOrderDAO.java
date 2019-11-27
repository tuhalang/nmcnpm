package com.nmcnpm.web.dao;

import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.CustomerOrder;

import java.util.List;

public interface ICustomerOrderDAO {
    Long insert(CustomerOrder customerOrder, Long customerID);
    void update(CustomerOrder customerOrder);
    void delete(CustomerOrder customerOrder);
    List<CustomerOrder> findAll();
    CustomerOrder findByOrderId(long id);
    List<CustomerOrder> find(int start, int limit);
    List<CustomerOrder> findByConfirmNumber(long id);
}
