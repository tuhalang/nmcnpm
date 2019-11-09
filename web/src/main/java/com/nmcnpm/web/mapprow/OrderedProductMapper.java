package com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class OrderedProductMapper implements IRowMapper<OrderedProduct>{

	@Override
	public OrderedProduct mapRow(ResultSet result) {
		try {
			OrderedProduct orderedProduct = new OrderedProduct();
			orderedProduct.setOrderID(result.getLong("order_id"));
			orderedProduct.setProductID(result.getLong("product_id"));
			orderedProduct.setQuantity(result.getLong("quantity"));
			return orderedProduct;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
