package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IProductDetailDAO;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.service.IProductDetailService;

import javax.inject.Inject;

public class ProductDetailService implements IProductDetailService {
    @Inject
    IProductDetailDAO productDetailDAO;

    @Override
    public ProductDetail findByID(Long id) {
        return productDetailDAO.findByProductDetailID(id);
    }
}
