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
}
