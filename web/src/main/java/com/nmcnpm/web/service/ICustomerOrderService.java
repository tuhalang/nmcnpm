package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.OrderedProduct;

import java.util.List;

public interface ICustomerOrderService {
    Long save(List<OrderedProduct> order, Customer customer);
}
