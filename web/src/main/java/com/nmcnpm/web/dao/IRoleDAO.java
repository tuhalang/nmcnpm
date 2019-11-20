package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.Role;

import java.util.List;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public interface IRoleDAO extends IBaseDao<Role> {
    void insert(Role role);
    void update(Role role);
    void delete(Role role);
    List<Role> findAll();
    List<Role> find(int start, int limit);
    List<Role> findByID(long id);
    List<Role> findByRoleName(String name);
    List<Role> findRolesByAccountId(Long id);
}
