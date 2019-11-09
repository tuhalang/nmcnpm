package com.nmcnpm.web.mapprow;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nmcnpm.database.mapper.IRowMapper;
import com.nmcnpm.web.model.Role;

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
