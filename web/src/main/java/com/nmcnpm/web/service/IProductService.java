/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.ProductDto;
import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface IProductService {
    
    ProductDto find(int currentPage, int elePerPage);
    ProductDto findByCategoryID(int id,int currentPage,int elePerPage);
}