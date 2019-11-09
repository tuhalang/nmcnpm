package com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class CategoryMapper implements IRowMapper<Category>{

	@Override
	public Category mapRow(ResultSet result) {
		try {
			Category category = new Category();
			category.setCategoryID(result.getLong("category_id"));
			category.setName(result.getString("name"));
			category.setImage(result.getString("image"));
			return category;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
