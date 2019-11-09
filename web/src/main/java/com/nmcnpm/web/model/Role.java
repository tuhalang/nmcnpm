package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

/**
 * @author tuhalang
 * @created on 11/9/19
 */

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class Role {
    private Long roleID;
    private RoleName roleName;
}
