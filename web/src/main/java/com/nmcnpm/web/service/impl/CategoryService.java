/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.ICategoryDAO;
import com.nmcnpm.web.dto.CategoryDto;
import com.nmcnpm.web.model.Category;
import com.nmcnpm.web.service.ICategoryService;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class CategoryService implements ICategoryService{
    
    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public CategoryDto find(int currentPage, int elePerPage) {
        CategoryDto categoryDto = new CategoryDto();
        categoryDto.setCurrentPage(currentPage);
        categoryDto.setElePerPage(elePerPage);
        categoryDto.setTotalPages(categoryDAO.count()/elePerPage+1);
        categoryDto.setListOfdata(categoryDAO.find(currentPage-1, elePerPage));
        return categoryDto;
    }

    @Override
    public Category findById(long id) {
        return categoryDAO.findById(id);
    }
}
