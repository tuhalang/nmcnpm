/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.dao;

import com.nmcnpm.database.dao.IBaseDao;
import com.nmcnpm.web.model.Account;

import java.util.List;

/**
 *
 * @author tuhalang
 */
public interface IAccountDAO extends IBaseDao<Account>{
    
    void insert(Account account);
    void update(Account account);
    void delete(Account account);
    List<Account> findAll();
    Account findByUsernameAndPassword(String username, String password);
    Account findById(long id);
    List<Account> find(int start, int limit);
    boolean isExist(String username);
    List<Account> findLikeUsername(String username);
    void setRole(Long accountId, Long roleId);
}
