package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.Category;

import java.util.List;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public interface ICategoryDAO extends IBaseDao<Category> {
    void insert(Category category);
    void update(Category category);
    void delete(Category category);
    List<Category> findAll();
    Category findById(long id);
    List<Category> find(int start, int limit);
    Long count();
}
