package com.nmcnpm.web.model;

import lombok.Data;

/**
 * @author tuhalang
 * @created on 11/9/19
 */
@Data
public class Account {

    private Long accountID;

    private String username;
    private String password;
    private Boolean status;
}
