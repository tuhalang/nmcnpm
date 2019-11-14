package com.nmcnpm.web.mapprow;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.Product;

public class ProductMapper implements IRowMapper<Product>{

	@Override
	public Product mapRow(ResultSet result) {
		try {
			Product product = new Product();
			product.setProductID(result.getLong("product_id"));
			product.setName(result.getString("name"));
			product.setPrice(result.getFloat("price"));
			product.setDescription(result.getString("description"));
			product.setLastModifiedAt(result.getDate("last_update"));
			product.setCategoryID(result.getLong("category_id"));
			product.setImage(result.getString("image"));
			product.setThumbImage(result.getString("thumb_image"));
			product.setDescriptionDetail(result.getString("description_detail"));
			product.setCreatedAt(result.getDate("created_at"));
			product.setLastModifiedAt(result.getDate("last_modified_at"));
			return product;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
