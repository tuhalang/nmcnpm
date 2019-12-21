package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;

import java.util.List;


/**
 *
 * @author tuhalang
 */
public interface IProductService {
    Product findById(Long productId);
    void findById(Long productId, ProductDto productDto);
    void find(int currentPage, int elePerPage, ProductDto productDto);
    boolean valid(Product product);
    boolean save(Product product);
    boolean isExist(Long productId);
    boolean update(Product product);
    ProductDto find(int currentPage, int elePerPage);
    ProductDto findByCategoryID(Long id,int currentPage,int elePerPage);
    List<Product> findByKey(List<String> key,long amount);
    Product findById(long id);
    ProductDto findBestSeller();
}
