package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.mapprow.CustomerMapper;
import com.nmcnpm.web.mapprow.CustomerOrderMapper;
import com.nmcnpm.web.model.CustomerOrder;

import java.util.List;

public class CustomerOrderDAO extends DataBaseDaoImpl {
    public void insert(CustomerOrder customerOrder) {
        String sql = "insert into customer_order( amount, confirm_number, created_at, last_modified_at) value(?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, customerOrder.getAmount(), customerOrder.getConfirmNumber());
        customerOrder.setOrderID(id);
    }

    public void update(CustomerOrder customerOrder) {
        String sql = "update customer_order set amount=?, confirm_number=?, last_modified_at=CURRENT_TIMESTAMP() where order_id=?";
        try {
            update(sql, customerOrder.getAmount(), customerOrder.getConfirmNumber(), customerOrder.getOrderID());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void delete(CustomerOrder customerOrder) {
        String sql = "delete from customer_order where order_id=? limit 1";
        delete(sql, customerOrder.getOrderID());
    }

    public List<CustomerOrder> findAll() {
        String sql = "select * from customer_order";
        List<CustomerOrder> customerOrders = query(sql, new CustomerOrderMapper());
        return customerOrders;
    }

    public CustomerOrder findByOrderId(long id) {
        String sql = "select * from customer_order where order_id=?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(), id);
        if(customerOrders.isEmpty())
            return null;
        return customerOrders.get(0);
    }

    public List<CustomerOrder> find(int start, int limit) {
        String sql = "select * from customer_order limit ?,?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(), start, limit);
        return customerOrders;
    }

    public List<CustomerOrder> findByConfirmNumber(long id) {
        String sql = "select * from customer_order where confirm_number=?";
        List<CustomerOrder> customerOrders = query(sql, new CustomerOrderMapper(),id);
        return customerOrders;
    }
}