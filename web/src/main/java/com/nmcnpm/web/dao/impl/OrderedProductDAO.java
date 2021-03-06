package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.mapprow.CustomerMapper;
import com.nmcnpm.web.mapprow.CustomerOrderMapper;
import com.nmcnpm.web.mapprow.OrderedProductMapper;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.IOrderProductService;

import java.util.List;

public class OrderedProductDAO extends DataBaseDaoImpl<OrderedProduct> implements IOrderedProductDAO{
    
    @Override
    public void insert(OrderedProduct orderedProduct) {
        String sql = "insert into order_product(order_id, product_id, quantity, created_at, last_modified_at) value(?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        insert(sql, orderedProduct.getOrderID(), orderedProduct.getProductID(), orderedProduct.getQuantity());
    }

    @Override
    public void update(OrderedProduct orderedProduct) {
        String sql = "update order_product set product_id=?, quantity=?, last_modified_at=CURRENT_TIMESTAMP() where order_id=?";
        try {
            update(sql, orderedProduct.getProductID(), orderedProduct.getQuantity(), orderedProduct.getOrderID());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void delete(OrderedProduct orderedProduct) {
        String sql = "delete from order_product where order_id=? limit 1";
        delete(sql, orderedProduct.getOrderID());
    }

    @Override
    public List<OrderedProduct> findAll() {
        String sql = "select * from order_product";
        List<OrderedProduct> orderedProducts = query(sql, new OrderedProductMapper());
        return orderedProducts;
    }

    @Override
    public List<OrderedProduct> findByOrderId(long id) {
        String sql = "select * from order_product where order_id=?";
        List<OrderedProduct> orderedProducts = query(sql,new OrderedProductMapper(), id);
        return orderedProducts;
    }

    @Override
    public List<OrderedProduct> find(int start, int limit) {
        String sql = "select * from order_product limit ?,?";
        List<OrderedProduct> orderedProducts = query(sql,new OrderedProductMapper(), start, limit);
        return orderedProducts;
    }

    @Override
    public List<OrderedProduct> findByProductID(long id) {
        String sql = "select * from order_product where Product_id=?";
        List<OrderedProduct> orderedProducts = query(sql, new OrderedProductMapper(),id);
        return orderedProducts;
    }

    @Override
    public List<OrderedProduct> findByCustomerOrderID(long id) {
        String sql = "select * from order_product where order_id=?";
        return query(sql, new OrderedProductMapper(), id);
    }
}
