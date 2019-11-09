package com.nmcnpm.web.dao;

import java.util.List;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;

import com.nmcnpm.web.mapprow.AccountMapper;
import com.nmcnpm.web.model.Account;

public class AccountDAO extends DataBaseDaoImpl{
	public void insert(Account account) {
		String sql = "insert into account(account_id, username, password, status) value(?,?,?,?)";
		insert(sql, account.getAccountID(), account.getUsername(), account.getPassword(), account.getStatus());
	}
	
	public void update(Account account) {
		String sql = "update user set username=?, password=?, status=? where account_id=?";
		update(sql, account.getUsername(), account.getPassword(), account.getStatus(), account.getAccountID());
		
	}
	
	public void delete(Account account) {
		String sql = "delete from account where username=? and password=? and maLop=?";
		delete(sql, bd.getUser_id(), bd.getMaHP(), bd.getMaLop());
	}
	
	public List<BangDiem> findAll() {
		String sql = "select * from account";
		List<BangDiem> mhs = query(sql, new AccountMapper());
		return mhs;
	}
}
