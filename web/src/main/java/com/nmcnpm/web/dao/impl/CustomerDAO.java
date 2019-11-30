package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.mapprow.AccountMapper;
import com.nmcnpm.web.mapprow.CustomerMapper;
import com.nmcnpm.web.model.Customer;

import java.util.List;

public class CustomerDAO extends DataBaseDaoImpl<Customer> implements ICustomerDAO {
    public void insert(Customer customer) {
        String sql = "insert into customer( address, city_region, email, name, phone, created_at, last_modified_at) value(?,?,?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, customer.getAddress(), customer.getCityRegion(), customer.getEmail(), customer.getName(), customer.getPhone());
        customer.setCustomerID(id);
    }

    public void update(Customer customer){
        String sql = "update customer set address=?, city_region=?, email=?, name=?, phone=?, last_modified_at=CURRENT_TIMESTAMP() where customer_id=?";
        update(sql, customer.getAddress(), customer.getCityRegion(), customer.getEmail(), customer.getName(), customer.getPhone(), customer.getCustomerID());

    }

    public void delete(Customer customer) {
        String sql = "delete from customer where customer_id=? limit 1";
        delete(sql, customer.getCustomerID());
    }

    @Override
    public boolean isExist(Customer customer) {
        String sql = "select count(1) from customer where email=? or phone=? limit 1";
        long count = count(sql, customer.getEmail(), customer.getPhone());
        if(count > 0)
            return true;
        return false;
    }

    public List<Customer> findAll() {
        String sql = "select * from customer";
        List<Customer> customers = query(sql, new CustomerMapper());
        return customers;
    }

    public Customer findById(long id) {
        String sql = "select * from customer where customer_id=?";
        List<Customer> customers = query(sql,new CustomerMapper(), id);
        if(customers.isEmpty())
            return null;
        return customers.get(0);
    }

    public List<Customer> find(int start, int limit) {
        String sql = "select * from customer limit ?,?";
        List<Customer> customers = query(sql,new CustomerMapper(), start, limit);
        return customers;
    }


    public List<Customer> findLikeName(String name) {
        String sql = "select * from customer where name like ?";
        List<Customer> customers = query(sql, new CustomerMapper(), "%"+name+"%");
        return customers;
    }

    public List<Customer> findLikeAddress(String address) {
        String sql = "select * from customer where address like ?";
        List<Customer> customers = query(sql, new CustomerMapper(), "%"+address+"%");
        return customers;
    }

    public List<Customer> findLikeCityRegion(String cityRegion) {
        String sql = "select * from customer where city_region like ?";
        List<Customer> customers = query(sql, new CustomerMapper(), "%"+cityRegion+"%");
        return customers;
    }

    @Override
    public Long count() {
        String sql = "select count(1) from customer";
        return count(sql);
    }
}
