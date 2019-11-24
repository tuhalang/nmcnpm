package com.nmcnpm.web.dao;

import com.nmcnpm.web.model.OrderedProduct;

import java.util.List;

public interface IOrderedProductDAO {
    public void insert(OrderedProduct orderedProduct);
    public void update(OrderedProduct orderedProduct);
    public void delete(OrderedProduct orderedProduct);
    public List<OrderedProduct> findAll();
    public List<OrderedProduct> findByOrderId(long id);
    public List<OrderedProduct> find(int start, int limit);
    public List<OrderedProduct> findByProductID(long id);
}
