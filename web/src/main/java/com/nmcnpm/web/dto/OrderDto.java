package com.nmcnpm.web.dto;

import com.nmcnpm.web.model.Product;
import lombok.Data;

@Data
public class OrderDto {
    private Product product;
    private Long quantity;

}
