package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Role;
import com.nmcnpm.web.model.RoleName;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.utils.SessionUtils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLDecoder;
import java.util.Base64;
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

        resp.setContentType("text/html");
        BufferedReader rd = new BufferedReader(new InputStreamReader(req.getInputStream()));
        String line=rd.readLine();
        String decode= URLDecoder.decode(decodeString(line.split("=")[1]),"UTF-8");
        String[] list=decode.split("&");
        String username = list[0].split("=")[1];
        String password = list[1].split("=")[1];

        Account account = accountService.authentication(username,password);
        if(account != null && account.getStatus()){

            account.setPassword("");
            SessionUtils.getInstance().putValue(req, "USER", account);
            SessionUtils.getInstance().putValue(req, "IS_LOGIN", true);

            Role role = account.getRoles().get(0);
            if(role.getRoleName().equals(RoleName.ROLE_ADMIN)){
                String contextPath = req.getContextPath();
                resp.getWriter().print("2");
                resp.getWriter().flush();
                //req.getRequestDispatcher("/WEB-INF/admin_theme/dashboard.jsp").forward(req,resp);
            } else if(role.getRoleName().equals(RoleName.ROLE_USER)){
                String contextPath = req.getContextPath();
                resp.getWriter().print("1");
                resp.getWriter().flush();
                //req.getRequestDispatcher("/templates/home.jsp").forward(req,resp);
            } else {
                resp.getWriter().print("3");
                resp.getWriter().flush();
            }
        } else {
            resp.getWriter().print("3");
            resp.getWriter().flush();
        }
    }
    public String decodeString(String encodedString) {
        encodedString=encodedString.replaceAll("%3D","=");
        encodedString=encodedString.replaceAll("%2B","+");
        encodedString=encodedString.replaceAll("%2F","/");
        byte[] bytes = Base64.getDecoder().decode(encodedString);
        return new String(bytes);
    }
}