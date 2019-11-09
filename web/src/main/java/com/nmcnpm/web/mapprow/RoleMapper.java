package com.nmcnpm.database.mapper.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;

public class RoleMapper implements IRowMapper<Role>{

	@Override
	public Role mapRow(ResultSet result) {
		try {
			Role role = new Role();
			role.setRoleID(result.getLong("role_id"));
			role.setRoleName(result.getString("role_name"));
			return role;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
