package com.nmcnpm.web.mapprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.CustomerOrder;

public class CustomerOrderMapper implements IRowMapper<CustomerOrder>{

	@Override
	public CustomerOrder mapRow(ResultSet result) {
		try {
			CustomerOrder cusromerOrder = new CustomerOrder();
			cusromerOrder.setOrderID(result.getLong("order_id"));
			cusromerOrder.setAmount(result.getLong("amount"));
			cusromerOrder.setConfirmNumber(result.getLong("confirm_number"));
			cusromerOrder.setCreatedAt(result.getDate("created_at"));
			cusromerOrder.setLastModifiedAt(result.getDate("last_modified_at"));
			return cusromerOrder;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
