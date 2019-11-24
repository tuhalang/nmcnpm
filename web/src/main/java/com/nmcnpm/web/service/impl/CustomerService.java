package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerService;

import javax.inject.Inject;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class CustomerService implements ICustomerService {

    @Inject
    private ICustomerDAO customerDAO;

    @Override
    public boolean valid(Customer customer) {
        if(!customer.getPhone().matches("^(0|\\+84)\\d{9}")){
            return false;
        }
        if(customer.getName().equals("")){
            return false;
        }
        if(customer.getAddress().equals("")){
            return false;
        }
        if(!customer.getEmail().matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")){
            return false;
        }
        return true;
    }

    @Override
    public boolean isExist(Customer customer) {
        return customerDAO.isExist(customer);
    }

    @Override
    public boolean save(Customer customer) {
        try{
            customerDAO.insert(customer);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Customer customer) {
        try{
            customerDAO.update(customer);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Customer findByID(Customer customer) {
        try{
            return customerDAO.findById(customer.getCustomerID());
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
