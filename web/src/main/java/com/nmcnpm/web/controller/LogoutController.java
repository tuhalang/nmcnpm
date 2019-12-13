package com.nmcnpm.web.controller;

import com.nmcnpm.web.utils.SessionUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class LogoutController extends HttpServlet {

    public LogoutController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SessionUtils.getInstance().removeValue(req,"IS_LOGIN");
        SessionUtils.getInstance().removeValue(req,"USER");
        resp.sendRedirect(req.getContextPath()+"/");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
