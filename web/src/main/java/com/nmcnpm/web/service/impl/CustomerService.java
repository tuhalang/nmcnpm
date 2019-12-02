package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IAccountDAO;
import com.nmcnpm.web.dao.ICustomerDAO;
import com.nmcnpm.web.dto.CustomerDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerService;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class CustomerService implements ICustomerService {

    @Inject
    private ICustomerDAO customerDAO;
    @Inject
    private IAccountDAO accountDAO;

    @Override
    public boolean valid(Customer customer) {
        if (!customer.getPhone().matches("^(0|\\+84)\\d{9}")) {
            return false;
        }
        if (customer.getName().equals("")) {
            return false;
        }
        if (customer.getAddress().equals("")) {
            return false;
        }
        if (!customer.getEmail().matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")) {
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
        try {
            customerDAO.insert(customer);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public CustomerDto find(int currentPage, int elePerPage) {
        CustomerDto customerDto = new CustomerDto();
        customerDto.setCurrentPage(currentPage);
        customerDto.setElePerPage(elePerPage);
        customerDto.setTotalPages(customerDAO.count() / elePerPage + 1);
        customerDto.setListOfData(customerDAO.find((currentPage - 1) * elePerPage, elePerPage));
        List<Customer> customers = new ArrayList<>();
        for (Customer customer : customerDto.getListOfData()) {
            customer.setAccount(accountDAO.findById(customer.getAccountID()));
            customers.add(customer);
        }
        customerDto.setListOfData(customers);
        return customerDto;
    }

    @Override
    public Customer findById(Long customerId) {
        Customer customer = customerDAO.findById(customerId);
        customer.setAccount(accountDAO.findById(customer.getAccountID()));
        return customer;
    }

    @Override
    public boolean update(Customer customer) {
        try {
            customerDAO.update(customer);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Customer findByID(Customer customer) {
        try {
            return customerDAO.findById(customer.getCustomerID());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
