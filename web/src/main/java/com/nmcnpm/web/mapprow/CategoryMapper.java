package com.nmcnpm.web.mapprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.Category;

public class CategoryMapper implements IRowMapper<Category>{

	@Override
	public Category mapRow(ResultSet result) {
		try {
			Category category = new Category();
			category.setCategoryID(result.getLong("category_id"));
			category.setName(result.getString("name"));
			category.setImage(result.getString("image"));
			category.setCreatedAt(result.getDate("created_at"));
			category.setLastModifiedAt(result.getDate("last_modified_at"));
			category.setIcon(result.getString("icon"));
			return category;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
