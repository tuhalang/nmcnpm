/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IProductDetailDAO;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class ProductDetailService implements IProductDetailService{
    
    @Inject
    IProductDetailDAO productDetailDAO;

    @Override
    public boolean valid(ProductDetail productDetail) {
        return true;
    }

    @Override
    public boolean save(ProductDetail productDetail) {
        try{
            productDetailDAO.insert(productDetail);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public ProductDetail findByProductId(Long productId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProductDetail findById(Long productDetailId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
