package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.OrderDto;

import java.util.List;

public interface IOrderProductService {
    boolean save(Long id, List<OrderDto> orderDtos);
}
