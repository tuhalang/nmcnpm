package com.nmcnpm.web.service;

import com.nmcnpm.web.model.ProductDetail;

/**
 *
 * @author tuhalang
 */
public interface IProductDetailService {
    boolean valid(ProductDetail productDetail);
    boolean save(ProductDetail productDetail);
    boolean isExist(Long productDetailId);
    boolean update(ProductDetail productDetail);
    ProductDetail findByProductId(Long productId);
    ProductDetail findById(Long productDetailId);
}
