package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.OrderedProduct;

import java.util.List;

public interface IOrderProductService {
    boolean save(Long id, List<OrderedProduct> orderedProducts);
}
