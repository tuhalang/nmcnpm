/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.OrderCustomerDto;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.CustomerOrder;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IOrderService;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author tuhalang
 */
public class TrackOrderController extends HttpServlet {

    @Inject
    IOrderService orderService;
    @Inject
    ICustomerService customerService;
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

        if (request.getParameter("orderId") != null) {
            long orderId = Long.parseLong(request.getParameter("orderId"));
            CustomerOrder customerOrder = orderService.findById(orderId);
            request.setAttribute("order", customerOrder);
            request.getRequestDispatcher("/templates/track-order-detail.jsp").forward(request, response);
        } else {
            Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");
            Long accountID = account.getAccountID();
            
            int currentPage = 1;
            int elePerPage = 12;
            try {
                currentPage = Integer.parseInt(request.getParameter("currentPage"));
                elePerPage = Integer.parseInt(request.getParameter("elePerPage"));
            } catch (Exception x) {

            }
            OrderCustomerDto orderDto = orderService.findByAccountId(accountID, currentPage, elePerPage);
            request.setAttribute("orderDto", orderDto);
            request.getRequestDispatcher("/templates/track_order.jsp").forward(request, response);
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
