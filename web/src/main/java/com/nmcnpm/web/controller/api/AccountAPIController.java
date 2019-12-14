/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.controller.api;

import com.nmcnpm.hashing.PasswordHashing;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.utils.SessionUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
public class AccountAPIController extends HttpServlet {

    @Inject
    IAccountService accountService;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        BufferedReader rd = new BufferedReader(new InputStreamReader(request.getInputStream(), "UTF-8"));
        String line = rd.readLine();
        String decode = decodeString(line.split("=")[1]);
        String[] list = decode.split("&");
        String current = list[0].split("=")[1];
        String _new = list[1].split("=")[1];
        String confirm = list[2].split("=")[1];

        Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");
        account = accountService.findById(account.getAccountID());

        if (_new.equals(confirm)) {
            _new = PasswordHashing.getInstance().getMethod().encrypt(_new);
            current = PasswordHashing.getInstance().getMethod().encrypt(current);
            if (current.equals(account.getPassword())) {
                if (!_new.equals(current)) {
                    account.setPassword(_new);
                    accountService.update(account);
                    response.getWriter().print("ok");
                    response.getWriter().flush();
                } else {
                    response.getWriter().print("New password equal current password!");
                    response.getWriter().flush();
                }
            } else {
                response.getWriter().print("Password is invalid!");
                response.getWriter().flush();
            }
        } else {
            response.getWriter().print("Error!");
            response.getWriter().flush();
        }

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));

        String json = "";
        if (br != null) {
            json = br.readLine();
        }

        br.close();

        Long accountId = Long.parseLong(json.substring(json.indexOf("=") + 1));
        Account account = accountService.findById(accountId);
        if (account != null) {
            account.setStatus(!account.getStatus());
            accountService.update(account);
            response.setStatus(HttpServletResponse.SC_OK);
            response.getWriter().print("ok");
        }
    }

    public String decodeString(String encodedString) {
        encodedString = encodedString.replaceAll("%3D", "=");
        encodedString = encodedString.replaceAll("%2B", "+");
        encodedString = encodedString.replaceAll("%2F", "/");
        byte[] bytes = Base64.getDecoder().decode(encodedString);
        return new String(bytes);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
