/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.service;

import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.model.RoleName;

/**
 *
 * @author tuhalang
 */
public interface IRoleService {
    Role findByRoleName(String roleName);
}
