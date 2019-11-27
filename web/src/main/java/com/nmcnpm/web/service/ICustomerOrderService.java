package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.Customer;

import java.util.List;

public interface ICustomerOrderService {
    Long save(List<OrderDto> orderDtos, Customer customer);
}
