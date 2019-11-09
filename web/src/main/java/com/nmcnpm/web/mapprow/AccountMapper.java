package com.nmcnpm.web.mapprow;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.Account;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountMapper implements IRowMapper<Account> {
	@Override
	public Account mapRow(ResultSet result) {
		try {	
			Account account = new Account();
			account.setAccountID(result.getLong("account_id"));
			account.setUsername(result.getString("username"));
			account.setPassword(result.getString("password"));
			account.setStatus(result.getBoolean("status"));
			account.setCreatedAt(result.getDate("created_at"));
			account.setLastModifiedAt(result.getDate("last_modified_at"));
			return account;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
