package com.nmcnpm.web.dao.impl;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.dao.IRoleDAO;
import com.nmcnpm.web.mapprow.ProductDetailMapper;
import com.nmcnpm.web.mapprow.RoleMapper;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.model.Role;

import java.util.List;

public class RoleDAO extends DataBaseDaoImpl<Role> implements IRoleDAO {
    public void insert(Role role) {
        String sql = "insert into role( role_name, created_at, last_modified_at) value(?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        Long id = insert(sql, role.getRoleName());
        role.setRoleID(id);
    }

    public void update(Role role) {
        String sql = "update role set role_name=? , last_modified_at=CURRENT_TIMESTAMP() where role_id=?";
        update(sql, role.getRoleName(), role.getRoleID());
    }

    public void delete(Role role) {
        String sql = "delete from role where role_id=? limit 1";
        delete(sql, role.getRoleID());
    }

    public List<Role> findAll() {
        String sql = "select * from role";
        List<Role> roles = query(sql, new RoleMapper());
        return roles;
    }

    public List<Role> find(int start, int limit) {
        String sql = "select * from role limit ?,?";
        List<Role> roles = query(sql,new RoleMapper(), start, limit);
        return roles;
    }

    public List<Role> findByID(long id) {
        String sql = "select * from role where role_id=?";
        List<Role> roles = query(sql, new RoleMapper(),id);
        return roles;
    }

    public List<Role> findByRoleName(String name) {
        String sql = "select * from role where role_name like ?";
        List<Role> roles = query(sql, new RoleMapper(),"%"+name+"%");
        return roles;
    }

    public List<Role> findRolesByAccountId(Long id){
        String sql = "select role.role_id, role.role_name from role \n" +
                "inner join account_role on role.role_id=account_role.role_id\n" +
                "where account_role.account_id=?;";
        List<Role> roles = query(sql, new RoleMapper(), id);
        return roles;
    }
}
