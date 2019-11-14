package com.nmcnpm.web.dao;

import com.nmcnpm.web.model.Product;

import java.util.List;

/**
 * @author tuhalang
 * @created on 11/14/19
 */
public class test {
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.findAll();
        System.out.println(products);
    }
}
