/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dao;

import com.nmcnpm.web.model.CustomerOrder;

import java.util.List;

/**
 * @author tuhalang
 */

public interface ICustomerOrderDAO {
    void insert(CustomerOrder customerOrder);

    void update(CustomerOrder customerOrder);

    void delete(CustomerOrder customerOrder);

    List<CustomerOrder> findAll();

    CustomerOrder findByOrderId(long id);

    List<CustomerOrder> find(int start, int limit);

    List<CustomerOrder> findByConfirmNumber(long id);
    Long insert(CustomerOrder customerOrder, Long customerID);
}
