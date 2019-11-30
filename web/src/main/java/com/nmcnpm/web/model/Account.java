package com.nmcnpm.web.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.*;

/**
 * @author tuhalang
 * @created on 11/9/19
 */
@Data
public class Account extends BaseModel{

    private Long accountID;

    private String username;
    private String password;
    private Boolean status;

    private List<Role> roles;

    public Account(Long accountID, String username, String password, Boolean status) {
        this.accountID = accountID;
        this.username = username;
        this.password = password;
        this.status = status;
    }

    public Account(Date createdAt, Date lastModifiedAt, Long accountID, String username, String password, Boolean status) {
        super(createdAt, lastModifiedAt);
        this.accountID = accountID;
        this.username = username;
        this.password = password;
        this.status = status;
    }

    public Account() {
        this.accountID = 1L;
        this.username = "username";
        this.password = "password";
        this.status = false;
    }
}
