package database.src.main.java.com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class AccountMapper implements IRowMapper<Account> {
	@Override
	public Customer mapRow(ResultSet result) {
		try {
			Account account = new Account();
			account.setAccountID(result.getLong("account_id"));
			account.setUsername(result.getString("username"));
			account.setPassword(result.getString("password"));
			account.setStatus(result.getBoolean("status"));
			return account;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
