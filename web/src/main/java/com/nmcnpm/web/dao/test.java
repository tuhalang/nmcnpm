package com.nmcnpm.web.dao;

import com.nmcnpm.web.model.*;

import javax.crypto.Cipher;
import java.util.List;

/**
 * @author tuhalang
 * @created on 11/14/19
 */
public class test {
    public static void main(String[] args) {
//        AccountDAO accountDAO = new AccountDAO();
//        Account account = new Account();
////        accountDAO.insert(account);
////        List<Account> accounts = accountDAO.findById(1L);
////        account = accountDAO.findById(2L);
//        account.setUsername("yes");
//        accountDAO.update(account);
//        System.out.println(account);
//
//        CategoryDAO categoryDAO = new CategoryDAO();
//        Category category = new Category();
//        category.setCategoryID(1L);
//        category.setImage("tivi");
////        categoryDAO.insert(category);
////        List<Category> categories = categoryDAO.find(0,1);
////        category = categoryDAO.findById(2L);
//        categoryDAO.update(category);
//        System.out.println(category);
//
//        CustomerDAO customerDAO = new CustomerDAO();
//        Customer customer = new Customer();
////        customerDAO.insert(customer);
////        List<Customer> customers = customerDAO.findLikeName("a");
////        customer = customerDAO.findById(5L);
//        customer.setAddress("aaa");
//        customerDAO.update(customer);
//        System.out.println(customer);
//
//        CustomerOrderDAO customerOrderDAO = new CustomerOrderDAO();
//        CustomerOrder customerOrder = new CustomerOrder();
//        customerOrderDAO.insert(customerOrder);
//        List<CustomerOrder> customerOrders = customerOrderDAO.findAll();
//        System.out.println(customerOrders);
//
//        ProductDAO productDAO = new ProductDAO();
//        Product product = new Product();
////        productDAO.insert(product);
////        List<Product> products = productDAO.findByCategoryID(0);
////        product = productDAO.findById(1L);
//        product.setThumbImage("aaa");
//        productDAO.delete(product);
//        System.out.println(product);


//        ProductDetailDAO productDetailDAO = new ProductDetailDAO();
//        ProductDetail productDetail = new ProductDetail();
////        productDetailDAO.insert(productDetail);
////        List<ProductDetail> productDetails = productDetailDAO.findAll();
//        productDetail.setAccessories("aaaaa");
//        productDetailDAO.update(productDetail);
//        System.out.println(productDetail);

//        OrderedProductDAO orderedProductDAO = new OrderedProductDAO();
//        OrderedProduct orderedProduct = new OrderedProduct();
//        orderedProduct.setOrderID(2L);
//        orderedProduct.setQuantity(9L);
////        orderedProductDAO.insert(orderedProduct);
////        List<OrderedProduct> orderedProducts = orderedProductDAO.findByOrderId(1L);
//        orderedProductDAO.update(orderedProduct);
//        System.out.println(orderedProduct);

        RoleDAO roleDAO = new RoleDAO();
        Role role = new Role();
        role.setRoleName(RoleName.ROLE_ADMIN);
//        roleDAO.insert(role);
//        List<Role> roles = roleDAO.findByRoleName(RoleName.ROLE_USER.toString());
        roleDAO.update(role);
        System.out.println(role);
    }
}
