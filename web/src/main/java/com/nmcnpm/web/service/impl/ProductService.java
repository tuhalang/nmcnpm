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
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class ProductService implements IProductService{
    
    @Inject
    IProductDAO productDAO;

    @Override
    public ProductDto find(int currentPage, int elePerPage) {
        ProductDto productDto = new ProductDto();
        productDto.setCurrentPage(currentPage);
        productDto.setElePerPage(elePerPage);
        productDto.setListOfdata(productDAO.find(currentPage-1, elePerPage));
        productDto.setTotalPages(productDAO.count()/elePerPage+1);
        return productDto;
    }
    @Override
    public ProductDto findByCategoryID(int id,int currentPage,int elePerPage){
        ProductDto productDto = new ProductDto();
        productDto.setCurrentPage(currentPage);
        productDto.setElePerPage(elePerPage);
        productDto.setListOfdata(productDAO.findByCategory(id,currentPage-1, elePerPage));
        productDto.setTotalPages(productDAO.countByCategoryId(id)/elePerPage+1);
        return productDto;
    }
    @Override
    public List<Product> findByKey(List<String> key,long amount){
        return productDAO.findByProductKey(key,amount);
    }
    @Override
    public Product findById(long id){
        return productDAO.findById(id);
    }
}
