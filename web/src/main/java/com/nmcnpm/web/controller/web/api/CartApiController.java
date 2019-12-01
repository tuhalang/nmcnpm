/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.controller.web.api;

import com.nmcnpm.web.utils.CookieUtils;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuhalang
 */
public class CartApiController extends HttpServlet {

    

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
        
        String productId = request.getParameter("productId");
        int action = Integer.parseInt(request.getParameter("action"));
        CookieUtils cookieUtils = CookieUtils.getInstance();
        
        if(action == 1){
            String quantity = request.getParameter("quantity");
        
            //response.addCookie(new Cookie(productId, quantity));
            
            cookieUtils.newCookie(response, productId, quantity, request.getContextPath());

            response.setContentType("text/html");
            response.getWriter().print("1");
            response.getWriter().flush();
            
        }else if(action == 0){
            cookieUtils.removeCookie(response, productId, request.getContextPath());
            //response.setStatus(HttpServletResponse.SC_OK);
            response.getWriter().print("1");
            //response.getWriter().flush();
        }
        
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
