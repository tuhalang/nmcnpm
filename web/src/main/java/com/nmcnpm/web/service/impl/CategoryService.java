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
import java.util.List;
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
        categoryDto.setListOfData(categoryDAO.find((currentPage-1)*elePerPage, elePerPage));
        return categoryDto;
    }

    @Override
    public List<Category> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public Category findById(Long categoryId) {
        return categoryDAO.findById(categoryId);
    }

    @Override
    public boolean isExist(Long categoryId) {
        return categoryDAO.isExist(categoryId);
    }

    @Override
    public boolean valid(Category category) {
        return true;
    }

    @Override
    public boolean save(Category category) {
        try{
            categoryDAO.insert(category);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Category category) {
        try{
            categoryDAO.update(category);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
    
}
