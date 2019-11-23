/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.Product;
import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface IProductDAO extends IBaseDao<Product>{
    void insert(Product product);
    void update(Product product);
    void delete(Product product);
    List<Product> findAll();
    Product findById(long id);
    List<Product> find(int start, int limit);
    List<Product> findByCategoryID(long id);
    List<Product> findByCategory(int id,int offset,int elePerPage);
    List<Product> findByProductDetailID(long id);
    List<Product> findByProductKey(List<String> key,long amount);
    Long count();
    Long countByCategoryId(long id);
}
