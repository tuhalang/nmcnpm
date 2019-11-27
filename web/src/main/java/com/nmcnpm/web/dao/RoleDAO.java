package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.impl.DataBaseDaoImpl;
import com.nmcnpm.web.mapprow.ProductDetailMapper;
import com.nmcnpm.web.mapprow.RoleMapper;
import com.nmcnpm.web.model.ProductDetail;
import com.nmcnpm.web.model.Role;

import java.util.List;

public class RoleDAO extends DataBaseDaoImpl {
    public void insert(Role role) {
        String sql = "insert into role(role_id, role_name, created_at, last_modified_at) value(?,?,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP())";
        insert(sql, role.getRoleID(), role.getRoleName());
    }

    public void update(Role role) throws Exception {
        String sql = "update role set role_name , last_modified_at=CURRENT_TIMESTAMP() where role_id=?";
        update(sql, role.getRoleName(), role.getRoleID());
    }

    public void delete(Role role) {
        String sql = "delete from role where role_id=?";
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
}