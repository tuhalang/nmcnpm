package com.nmcnpm.web.service.impl;


import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.*;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IOrderProductService;
import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class OrderProductService<IOrderProduct> implements IOrderProductService{
    @Inject
    IOrderedProductDAO orderedProductDAO;
    @Inject
    ICustomerOrderDAO customerOrderDAO;
    @Inject
    IProductDAO productDAO;
    @Inject
    ICustomerDAO customerDAO;
    @Inject
    ICustomerService customerService;

    @Override
    public boolean save(Long id, List<OrderedProduct> orderedProducts) {
        try{
            for (OrderedProduct orderedProduct: orderedProducts) {
                orderedProduct.setOrderID(id);
                orderedProductDAO.insert(orderedProduct);
            }
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
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
    public CustomerOrder findByCustomerId(long accountId) {
        Customer customer = customerService.findByAccountId(accountId).get(0);
        CustomerOrder order = new CustomerOrder();
        order = customerOrderDAO.findByCustomerId(customer.getCustomerID());
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
        order.setCustomer(customer);
        return order;
    }

    @Override
    public boolean nextStatus(long accountId) {
        try{
            Customer customer = customerService.findByAccountId(accountId).get(0);
            CustomerOrder order = new CustomerOrder();
            order = customerOrderDAO.findByCustomerId(customer.getCustomerID());
            switch(order.getOrderStatus()){
                case WAITING:
                    order.setOrderStatus(OrderStatus.CONFIRMED);
                    customerOrderDAO.update(order);
                    break;
                case CONFIRMED:
                    order.setOrderStatus(OrderStatus.DELIVERING);
                    customerOrderDAO.update(order);
                    //minus product
                    minusQuantityProduct(order.getOrderID());
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
