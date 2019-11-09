package com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class CusromerOrderMapper implements IRowMapper<CusromerOrder>{

	@Override
	public CusromerOrder mapRow(ResultSet result) {
		try {
			CusromerOrder cusromerOrder = new CusromerOrder();
			cusromerOrder.setOrderID(result.getLong("order_id"));
			cusromerOrder.setAmount(result.getLong("amount"));
			cusromerOrder.setConfirmNumber(result.getLong("confirm_number"));
			return cusromerOrder;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
