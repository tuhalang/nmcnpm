package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DeleteAddressController extends HttpServlet {
    @Inject
    ICustomerService customerService;
    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Account account = (Account) sessionUtils.getValue(request, "USER");
        if(!customerService.delete(Long.parseLong((String)request.getParameter( "customerID" )))) {

        }


        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/confirm_address");
        requestDispatcher.forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Account account = (Account) sessionUtils.getValue(request, "USER");
        PrintWriter out = response.getWriter();
        if(customerService.delete(Long.parseLong((String)request.getParameter( "id" )))){
            out.println("<html><head></head><body onload=\"alert('xóa thành công')\"></body></html>");
        }else {
            out.println("<html><head></head><body onload=\"alert('không thể xóa địa chỉ đã từng đặt hàng')\"></body></html>");

        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/confirm_address");
        requestDispatcher.include(request, response);

    }
}

