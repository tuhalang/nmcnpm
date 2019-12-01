package com.nmcnpm.web.service.impl;

import com.nmcnpm.hashing.PasswordHashing;
import com.nmcnpm.web.dao.IAccountDAO;
import com.nmcnpm.web.dao.IRoleDAO;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.model.RoleName;
import com.nmcnpm.web.service.IAccountService;

import javax.inject.Inject;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class AccountService implements IAccountService {

    @Inject
    private IAccountDAO accountDAO;

    @Inject
    private IRoleDAO roleDAO;

    @Override
    public boolean valid(Account account) {
        if(!account.getUsername().matches("^[a-zA-Z0-9._-]{5,}$")){
            return false;
        }
        if(!account.getPassword().matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,20}$")){
            return false;
        }
        return true;
    }

    @Override
    public boolean isExist(Account account) {
        return accountDAO.isExist(account.getUsername());
    }

    @Override
    public boolean save(Account account) {
        try{
            account.setPassword(PasswordHashing.getInstance().getMethod().encrypt(account.getPassword()));
            account.setStatus(true);
            accountDAO.insert(account);
            Role role = (Role) roleDAO.findByRoleName(RoleName.ROLE_USER.toString());
            accountDAO.setRole(account.getAccountID(), role.getRoleID());
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Account authentication(String username, String password) {
        password = PasswordHashing.getInstance().getMethod().encrypt(password);
        Account account = accountDAO.findByUsernameAndPassword(username, password);
        if(account != null){
            account.setRoles(roleDAO.findRolesByAccountId(account.getAccountID()));
        }
        return  account;
    }

    @Override
    public Account findByUsernameAndPassword(String username, String password) {
        password = PasswordHashing.getInstance().getMethod().encrypt(password);
        return accountDAO.findByUsernameAndPassword(username, password);
    }
}
