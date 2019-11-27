package com.nmcnpm.web.service.impl;


import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.IOrderProductService;
import javax.inject.Inject;
import java.util.List;

public class OrderProductService<IOrderProduct> implements IOrderProductService{
    @Inject
    IOrderedProductDAO orderedProductDAO;

    @Override
    public boolean save(Long id, List<OrderDto> orderDtos) {
        try{
            OrderedProduct orderedProduct = new OrderedProduct();
            for (OrderDto orderDto: orderDtos) {
                orderedProduct.setOrderID(id);
                orderedProduct.setProductID(orderDto.getProduct().getProductID());
                orderedProduct.setQuantity(orderDto.getQuantity());
                orderedProductDAO.insert(orderedProduct);
            }
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
