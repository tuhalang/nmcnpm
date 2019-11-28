/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dto;

import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.model.ProductDetail;
import lombok.Data;

/**
 *
 * @author tuhalang
 */
@Data
public class ProductDto extends ResponseDto<Product>{
     private ProductDetail productDetail;
}
