/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.CategoryDto;

/**
 *
 * @author tuhalang
 */
public interface ICategoryService {
    CategoryDto find(int currentPage, int elePerPage);
}