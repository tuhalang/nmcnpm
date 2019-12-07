/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.CustomerOrder;

/**
 *
 * @author tuhalang
 */
public interface IOrderService {
    OrderCustomerDto find(int currentPage, int elePerPage);
    CustomerOrder findById(long orderId);
    boolean nextStatus(long orderId);
}
