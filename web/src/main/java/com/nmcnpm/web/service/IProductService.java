/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;

/**
 *
 * @author tuhalang
 */
public interface IProductService {
    
    Product find(int currentPage, int elePerPage);
    Product findById(Long productId);
    void findById(Long productId, ProductDto productDto);
    void find(int currentPage, int elePerPage, ProductDto productDto);
    boolean valid(Product product);
    boolean save(Product product);
    boolean isExist(Long productId);
    boolean update(Product product);
}
