/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.IOrderService;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class OrderService implements IOrderService{
    
    @Inject
    ICustomerOrderDAO customerOrderDAO;
    
    @Inject
    IOrderedProductDAO orderedProductDAO;
    
    @Inject
    IProductDAO productDAO;
    

    @Override
    public OrderCustomerDto find(int currentPage, int elePerPage) {
        List<CustomerOrder> orders = new ArrayList<>();
        for(CustomerOrder order : customerOrderDAO.find((currentPage-1)*elePerPage, elePerPage)){
            order.setOrderedProducts(orderedProductDAO.findByCustomerOrderID(order.getOrderID()));
            long amount=0;
            for(OrderedProduct orderedProduct : order.getOrderedProducts()){
                amount+= orderedProduct.getQuantity()*productDAO.findById(orderedProduct.getProductID()).getPrice();
            }
            order.setAmount(amount);
            orders.add(order);
        }
        OrderCustomerDto orderDto = new OrderCustomerDto();
        orderDto.setCurrentPage(currentPage);
        orderDto.setElePerPage(elePerPage);
        orderDto.setListOfData(orders);
        return orderDto;
    }

}
