package com.nmcnpm.web.service;

import com.nmcnpm.web.model.Account;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public interface IAccountService {
    boolean valid(Account account);
    boolean isExist(Account account);
    boolean save(Account account);
    Account authentication(String username, String password);
    Account findByUsernameAndPassword(String username, String password);
    Account findById(Long accountId);
    boolean update(Account account);
}
