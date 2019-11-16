package com.nmcnpm.web.mapprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.OrderedProduct;

public class OrderedProductMapper implements IRowMapper<OrderedProduct>{

	@Override
	public OrderedProduct mapRow(ResultSet result) {
		try {
			OrderedProduct orderedProduct = new OrderedProduct();
			orderedProduct.setOrderID(result.getLong("order_id"));
			orderedProduct.setProductID(result.getLong("product_id"));
			orderedProduct.setQuantity(result.getLong("quantity"));
			orderedProduct.setCreatedAt(result.getDate("created_at"));
			orderedProduct.setLastModifiedAt(result.getDate("last_modified_at"));
			return orderedProduct;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
