package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.Customer;

import java.util.List;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public interface ICustomerDAO extends IBaseDao<Customer> {
    void insert(Customer customer);
    void update(Customer customer);
    void delete(Customer customer);
    boolean isExist(Customer customer);
    List<Customer> findAll();
    Customer findById(long id);
    List<Customer> find(int start, int limit);
    List<Customer> findLikeName(String name);
    List<Customer> findLikeAddress(String address);
    List<Customer> findLikeCityRegion(String cityRegion);
}
