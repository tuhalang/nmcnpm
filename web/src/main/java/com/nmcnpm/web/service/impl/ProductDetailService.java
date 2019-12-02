package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IProductDetailDAO;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;

/**
 *
 * @author tuhalang
 */

import javax.inject.Inject;

public class ProductDetailService implements IProductDetailService {
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
        return productDetailDAO.findByProductDetailID(productDetailId);
    }

    @Override
    public boolean isExist(Long productDetailId) {
        return productDetailDAO.isExist(productDetailId);
    }

    @Override
    public boolean update(ProductDetail productDetail) {
        try{
            productDetailDAO.update(productDetail);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        
    }
}
