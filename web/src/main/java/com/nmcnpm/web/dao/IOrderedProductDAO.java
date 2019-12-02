/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.OrderedProduct;
import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface IOrderedProductDAO extends IBaseDao<OrderedProduct>{
    void insert(OrderedProduct orderedProduct);
    void update(OrderedProduct orderedProduct);
    void delete(OrderedProduct orderedProduct);
    List<OrderedProduct> findAll();
    List<OrderedProduct> findByOrderId(long id);
    List<OrderedProduct> find(int start, int limit);
    List<OrderedProduct> findByProductID(long id);
    List<OrderedProduct> findByCustomerOrderID(long id);

}
