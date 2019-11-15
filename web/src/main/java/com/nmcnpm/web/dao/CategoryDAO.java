package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.mapprow.AccountMapper;
import com.nmcnpm.web.mapprow.CategoryMapper;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Category;

import java.util.List;

public class CategoryDAO extends DataBaseDaoImpl {
    public void insert(Category category) {
        String sql = "insert into category(image, name, created_at, last_modified_at) value(?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        insert(sql, category.getImage(), category.getName());
    }

    public void update(Category category) {
        String sql = "update category set image=?, name=?, last_modified_at=CURRENT_TIMESTAMP() where category_id=?";
        update(sql, category.getImage(), category.getName(), category.getCategoryID());

    }

    public void delete(Category category) {
        String sql = "delete from category where category_id=? and image=? and name=? limit 1";
        delete(sql, category.getCategoryID(), category.getImage(), category.getName());
    }

    public List<Category> findAll(){
        String sql = "select * from category";
        List<Category> category = query(sql, new CategoryMapper());
        return category;
    }

    public Category findById(long id){
        String sql = "select * from category where category_id=?";
        List<Category> category = query(sql,new CategoryMapper(), id);
        if(category.isEmpty())
            return null;
        return category.get(0);
    }

    public List<Category> find(int start, int limit) {
        String sql = "select * from category limit ?,?";
        List<Category> category = query(sql,new CategoryMapper(), start, limit);
        return category;
    }
}
