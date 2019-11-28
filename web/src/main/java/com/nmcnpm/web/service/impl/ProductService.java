/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IProductDAO;
import com.nmcnpm.web.dao.IProductDetailDAO;
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
    
    @Inject
    private IProductDetailDAO productDetailDAO;

    @Override
    public void find(int currentPage, int elePerPage, ProductDto productDto) {
        productDto.setCurrentPage(currentPage);
        productDto.setElePerPage(elePerPage);
        productDto.setListOfData(productDAO.find((currentPage-1)*elePerPage, elePerPage));
        productDto.setTotalPages(productDAO.count()/elePerPage+1);
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

    @Override
    public void findById(Long productId, ProductDto productDto) {
        productDto.setSingleData(productDAO.findById(productId));
        productDto.setProductDetail(productDetailDAO.findByProductDetailID(productDto.getSingleData().getProductDetailID()));
    }

    @Override
    public boolean isExist(Long productId) {
        return productDAO.isExist(productId);
    }

    @Override
    public boolean update(Product product) {
        try{
            productDAO.update(product);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Product find(int currentPage, int elePerPage) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Product findById(Long productId) {
        return productDAO.findById(productId);
    }
    
}
