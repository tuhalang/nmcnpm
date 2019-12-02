/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service.impl;

import com.nmcnpm.web.dao.IRoleDAO;
import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.service.IRoleService;
import javax.inject.Inject;

/**
 *
 * @author tuhalang
 */
public class RoleService implements IRoleService{

    @Inject
    IRoleDAO roleDAO;
    
    @Override
    public Role findByRoleName(String roleName) {
        return roleDAO.findByRoleName(roleName);
    }
    
}
