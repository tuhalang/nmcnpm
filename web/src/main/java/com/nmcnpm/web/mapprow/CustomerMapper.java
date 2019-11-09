package com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class CustomerMapper implements IRowMapper<Customer> {

	@Override
	public Customer mapRow(ResultSet result) {
		try {
			Customer customer = new Customer();
			customer.setCustomerID(result.getLong("customer_id"));
			customer.setName(result.getString("name"));
			customer.setEmail(result.getString("email"));
			customer.setPhone(result.getLong("phone"));
			customer.setAddress(result.getString("address"));
			customer.setCityRegion(result.getString("city_region"));
			return customer;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
