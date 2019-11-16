package com.nmcnpm.web.dao.impl;

import java.util.List;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IAccountDAO;

import com.nmcnpm.web.mapprow.AccountMapper;
import com.nmcnpm.web.model.Account;

public class AccountDAO extends DataBaseDaoImpl<Account> implements IAccountDAO{

	public void insert(Account account) {
		String sql = "insert into account( username, password, status, created_at, last_modified_at) value(?,?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
		Long id = insert(sql, account.getUsername(), account.getPassword(), account.getStatus());
		account.setAccountID(id);
	}
	
	public void update(Account account) {
		String sql = "update account set username=?, password=?, status=?, last_modified_at=CURRENT_TIMESTAMP() where account_id=?";
		update(sql, account.getUsername(), account.getPassword(), account.getStatus(), account.getAccountID());
		
	}
	
	public void delete(Account account) {
		String sql = "delete from account where username=? and password=? and account_id=? limit 1";
		delete(sql, account.getUsername(), account.getPassword(), account.getAccountID());
	}
	
	public List<Account> findAll() {
		String sql = "select * from account";
		List<Account> accounts = query(sql, new AccountMapper());
		return accounts;
	}

	public Account findByUsernameAndPassword(String username, String password) {
		String sql = "select * from account where username=? and password=?";
		List<Account> accounts = query(sql,new AccountMapper(), username, password);
		if(accounts.isEmpty())
			return null;
		return accounts.get(0);
	}

	public Account findById(long id) {
		String sql = "select * from account where account_id=?";
		List<Account> accounts = query(sql,new AccountMapper(), id);
		if(accounts.isEmpty())
			return null;
		return accounts.get(0);
	}

	public List<Account> find(int start, int limit) {
		String sql = "select * from account limit ?,?";
		List<Account> accounts = query(sql,new AccountMapper(), start, limit);
		return accounts;
	}

	public boolean isExist(String username) {
		String sql = "select count(1) from account where username=? limit 1";
		long count = count(sql, username);
		if(count > 0)
			return true;
		return false;
	}

	public List<Account> findLikeUsername(String username) {
		String sql = "select * from account where username like ?";
		List<Account> accounts = query(sql, new AccountMapper(), "%"+username+"%");
		return accounts;
	}

	@Override
	public void setRole(Long accountId, Long roleId) {
		String sql = "insert into account_role(account_id, role_id) values (?,?)";
		insert(sql,accountId,roleId);
	}
}
