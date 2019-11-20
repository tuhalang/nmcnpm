package com.nmcnpm.web.service;

import com.nmcnpm.web.model.Customer;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public interface ICustomerService {
    boolean valid(Customer customer);
    boolean isExist(Customer customer);
    boolean save(Customer customer);
}