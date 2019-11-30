/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.dto.CategoryDto;
import com.nmcnpm.web.model.Category;
import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface ICategoryService {
    CategoryDto find(int currentPage, int elePerPage);
    List<Category> findAll();
    Category findById(Long categoryId);
    boolean isExist(Long categoryId);
    boolean valid(Category category);
    boolean save(Category category);
    boolean update(Category category);
}
