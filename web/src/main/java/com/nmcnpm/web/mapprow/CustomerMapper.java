package com.nmcnpm.web.mapprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.Customer;

public class CustomerMapper implements IRowMapper<Customer> {

	@Override
	public Customer mapRow(ResultSet result) {
		try {
			Customer customer = new Customer();
			customer.setCustomerID(result.getLong("customer_id"));
			customer.setName(result.getString("name"));
			customer.setEmail(result.getString("email"));
			customer.setPhone(result.getString("phone"));
			customer.setAddress(result.getString("address"));
			customer.setCityRegion(result.getString("city_region"));
                        customer.setAccountID(result.getLong("account_id"));
			customer.setCreatedAt(result.getDate("created_at"));
			customer.setLastModifiedAt(result.getDate("last_modified_at"));
			return customer;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
