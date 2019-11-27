package com.nmcnpm.web.service;

import com.nmcnpm.web.model.ProductDetail;

public interface IProductDetailService {
    ProductDetail findByID(Long id);
}
