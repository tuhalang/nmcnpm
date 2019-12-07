/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.model.OrderStatus;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.IOrderService;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class OrderService implements IOrderService {

    @Inject
    ICustomerOrderDAO customerOrderDAO;

    @Inject
    IOrderedProductDAO orderedProductDAO;

    @Inject
    IProductDAO productDAO;

    @Inject
    ICustomerDAO customerDAO;

    @Override
    public OrderCustomerDto find(int currentPage, int elePerPage) {
        List<CustomerOrder> orders = new ArrayList<>();
        for (CustomerOrder order : customerOrderDAO.find((currentPage - 1) * elePerPage, elePerPage)) {
            order.setOrderedProducts(orderedProductDAO.findByCustomerOrderID(order.getOrderID()));
            long amount = 0;
            for (OrderedProduct orderedProduct : order.getOrderedProducts()) {
                amount += orderedProduct.getQuantity() * productDAO.findById(orderedProduct.getProductID()).getPrice();
            }
            order.setCustomer(customerDAO.findById(order.getCustomerID()));
            order.setAmount(amount);
            orders.add(order);
        }
        OrderCustomerDto orderDto = new OrderCustomerDto();
        orderDto.setCurrentPage(currentPage);
        orderDto.setElePerPage(elePerPage);
        orderDto.setTotalPages(customerOrderDAO.count() / elePerPage + 1);
        orderDto.setListOfData(orders);
        return orderDto;
    }

    @Override
    public CustomerOrder findById(long orderId) {
        CustomerOrder order = new CustomerOrder();
        order = customerOrderDAO.findByOrderId(orderId);
        order.setOrderedProducts(orderedProductDAO.findByCustomerOrderID(order.getOrderID()));
        long amount = 0;
        List<OrderedProduct> orderedProducts = new ArrayList<>();
        for (OrderedProduct orderedProduct : order.getOrderedProducts()) {
            Product product = productDAO.findById(orderedProduct.getProductID());
            amount += orderedProduct.getQuantity() * product.getPrice();
            orderedProduct.setProduct(product);
            orderedProducts.add(orderedProduct);
        }
        order.setOrderedProducts(orderedProducts);
        order.setAmount(amount);
        order.setCustomer(customerDAO.findById(order.getCustomerID()));
        return order;
    }

    @Override
    public boolean nextStatus(long orderId) {
        try{
            CustomerOrder order = customerOrderDAO.findByOrderId(orderId);
            switch(order.getOrderStatus()){
                case WAITING:
                    order.setOrderStatus(OrderStatus.CONFIRMED);
                    customerOrderDAO.update(order);
                    break;
                case CONFIRMED:
                    order.setOrderStatus(OrderStatus.DELIVERING);
                    customerOrderDAO.update(order);
                    //minus product
                    minusQuantityProduct(orderId);
                    break;
                case DELIVERING:
                    order.setOrderStatus(OrderStatus.RECEIVED);
                    customerOrderDAO.update(order);
                    break;
                default: throw new Exception("status error!");
            }
            return true;
        }catch(Exception e){
            return false;
        }
    }
    
    private void minusQuantityProduct(long orderId) throws Exception{
        List<OrderedProduct> ops = orderedProductDAO.findByCustomerOrderID(orderId);
        for(OrderedProduct op : ops){
            Product product = productDAO.findById(op.getProductID());
            if(product.getQuantity()>op.getQuantity()){
                product.setQuantity(product.getQuantity()-op.getQuantity());
                productDAO.update(product);
            }else{
                throw new Exception("Not enought quantity");
            }
        }
    }

}
