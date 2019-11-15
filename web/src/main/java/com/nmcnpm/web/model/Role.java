package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;

/**
 * @author tuhalang
 * @created on 11/9/19
 */

@Data
public class Role extends BaseModel{
    private Long roleID;
    private RoleName roleName;

    public Role(Long roleID, RoleName roleName) {
        this.roleID = roleID;
        this.roleName = roleName;
    }

    public Role(Date createdAt, Date lastModifiedAt, Long roleID, RoleName roleName) {
        super(createdAt, lastModifiedAt);
        this.roleID = roleID;
        this.roleName = roleName;
    }

    public Role(){
        this.roleID = 1L;
        this.roleName = RoleName.ROLE_USER;
    }
}
