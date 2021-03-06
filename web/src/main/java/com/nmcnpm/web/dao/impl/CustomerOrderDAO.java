package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.ICustomerOrderDAO;
import com.nmcnpm.web.mapprow.CustomerMapper;
import com.nmcnpm.web.mapprow.CustomerOrderMapper;
import com.nmcnpm.web.model.CustomerOrder;

import java.util.List;
public class CustomerOrderDAO extends DataBaseDaoImpl<CustomerOrder> implements ICustomerOrderDAO{
    
    @Override
    public void insert(CustomerOrder customerOrder) {
        String sql = "insert into customer_order( amount, confirm_number,status, payment_method, created_at, last_modified_at) value(?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, customerOrder.getAmount(), customerOrder.getConfirmNumber(), customerOrder.getOrderStatus(), customerOrder.getPaymentMethod());
        customerOrder.setOrderID(id);
    }
    @Override
    public Long insert(CustomerOrder customerOrder, Long customerID) {
        String sql = "insert into customer_order(customer_id, amount, confirm_number, status, payment_method, created_at, last_modified_at) value(?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, customerID, customerOrder.getAmount(), customerOrder.getConfirmNumber(), customerOrder.getOrderStatus(), customerOrder.getPaymentMethod());
        customerOrder.setOrderID(id);
        return id;
    }
    @Override
    public void update(CustomerOrder customerOrder) {
        String sql = "update customer_order set amount=?, confirm_number=?, status=?, payment_method=?, last_modified_at=CURRENT_TIMESTAMP() where order_id=?";
        try {
            update(sql, customerOrder.getAmount(), customerOrder.getConfirmNumber(), customerOrder.getOrderStatus(), customerOrder.getPaymentMethod(), customerOrder.getOrderID());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void delete(CustomerOrder customerOrder) {
        String sql = "delete from customer_order where order_id=? limit 1";
        delete(sql, customerOrder.getOrderID());
    }

    @Override
    public List<CustomerOrder> findAll() {
        String sql = "select * from customer_order";
        List<CustomerOrder> customerOrders = query(sql, new CustomerOrderMapper());
        return customerOrders;
    }

    @Override
    public CustomerOrder findByOrderId(long id) {
        String sql = "select * from customer_order where order_id=?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(), id);
        if(customerOrders.isEmpty())
            return null;
        return customerOrders.get(0);
    }

    @Override
    public CustomerOrder findByCustomerId(long id) {
        String sql = "select * from customer_order where customer_id=?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(), id);
        if(customerOrders.isEmpty())
            return null;
        return customerOrders.get(0);
    }

    @Override
    public List<CustomerOrder> find(int start, int limit) {
        String sql = "select * from customer_order order by FIELD(status, 'WAITING', 'CONFIRM', 'DELIVERING', 'RECEIVED'), created_at limit ?,?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(), start, limit);
        return customerOrders;
    }

    @Override
    public List<CustomerOrder> find(Long customerId, int start, int limit) {
        String sql = "select * from customer_order where customer_id=? order by FIELD(status, 'WAITING', 'CONFIRM', 'DELIVERING', 'RECEIVED'), created_at limit ?,?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(),customerId, start, limit);
        return customerOrders;
    }

    @Override
    public List<CustomerOrder> findByConfirmNumber(long id) {
        String sql = "select * from customer_order where confirm_number=?";
        List<CustomerOrder> customerOrders = query(sql, new CustomerOrderMapper(),id);
        return customerOrders;
    }

    @Override
    public long count() {
        String sql = "select count(1) from customer_order";
        return count(sql);
    }

    @Override
    public List<CustomerOrder> findByAccountId(Long accountId, int start, int limit) {
        String sql = "SELECT * FROM customer_order " +
                    "inner join customer using(customer_id) " +
                    "inner join account using(account_id) " +
                    "where account_id=? " +
                    "order by FIELD(customer_order.status, 'WAITING', 'CONFIRM', 'DELIVERING', 'RECEIVED'), customer_order.created_at limit ?,?";
        List<CustomerOrder> customerOrders = query(sql,new CustomerOrderMapper(),accountId, start, limit);
        return customerOrders;
    }
}
