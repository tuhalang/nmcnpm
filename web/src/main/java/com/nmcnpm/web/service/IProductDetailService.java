/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.model.ProductDetail;

/**
 *
 * @author tuhalang
 */
public interface IProductDetailService {
    boolean valid(ProductDetail productDetail);
    boolean save(ProductDetail productDetail);
    ProductDetail findByProductId(Long productId);
    ProductDetail findById(Long productDetailId);
}
