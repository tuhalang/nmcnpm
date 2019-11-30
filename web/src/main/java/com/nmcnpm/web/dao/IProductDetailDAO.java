/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.ProductDetail;
import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface IProductDetailDAO extends IBaseDao<ProductDetail>{
    void insert(ProductDetail productDetail);
    void update(ProductDetail productDetail);
    void delete(ProductDetail productDetail);
    List<ProductDetail> findAll();
    List<ProductDetail> find(int start, int limit);
    ProductDetail findByProductDetailID(long id);
    boolean isExist(Long productDetailId);
}
