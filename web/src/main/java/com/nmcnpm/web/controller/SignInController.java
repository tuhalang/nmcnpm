/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.controller;

import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.model.RoleName;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.utils.SessionUtils;

import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuhalang
 */
public class SignInController extends HttpServlet {


    @Inject
    IAccountService accountService;

    public SignInController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/templates/signin.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("txtUsername");
        String password = req.getParameter("txtPassword");

        Account account = accountService.authentication(username,password);
        if(account != null && account.getStatus()){

            account.setPassword("");
            SessionUtils.getInstance().putValue(req, "USER", account);
            SessionUtils.getInstance().putValue(req, "IS_LOGIN", true);

            Role role = account.getRoles().get(0);
            if(role.getRoleName().equals(RoleName.ROLE_ADMIN)){
                String contextPath = req.getContextPath();
                resp.sendRedirect(contextPath+"/admin");
                //req.getRequestDispatcher("/WEB-INF/admin_theme/dashboard.jsp").forward(req,resp);
            } else if(role.getRoleName().equals(RoleName.ROLE_USER)){
                String contextPath = req.getContextPath();
                resp.sendRedirect(contextPath);
                //req.getRequestDispatcher("/templates/home.jsp").forward(req,resp);
            } else {
                req.setAttribute("error", "oops!");
                req.getRequestDispatcher("/templates/signin.jsp").forward(req,resp);
            }
        } else {
            req.setAttribute("error", "oops!");
            req.getRequestDispatcher("/templates/signin.jsp").forward(req,resp);
        }


    }

}
