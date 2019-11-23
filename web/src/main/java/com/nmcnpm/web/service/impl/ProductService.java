/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.IProductService;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class ProductService implements IProductService{
    
    @Inject
    private IProductDAO productDAO;

    @Override
    public ProductDto find(int currentPage, int elePerPage) {
        ProductDto productDto = new ProductDto();
        productDto.setCurrentPage(currentPage);
        productDto.setElePerPage(elePerPage);
        productDto.setListOfData(productDAO.find(currentPage-1, elePerPage));
        productDto.setTotalPages(productDAO.count()/elePerPage+1);
        return productDto;
    }

    @Override
    public boolean valid(Product product) {
        return true;
    }

    @Override
    public boolean save(Product product) {
        try{
            productDAO.insert(product);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        
    }
    
}
