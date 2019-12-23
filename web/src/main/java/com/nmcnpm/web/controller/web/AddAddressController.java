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


    public class AddAddressController extends HttpServlet {
        @Inject
        ICustomerService customerService;
        SessionUtils sessionUtils = new SessionUtils();

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            Account account = (Account) sessionUtils.getValue(request, "USER");
            Customer customer = new Customer();
            customer.setName(request.getParameter("full_name"));
            customer.setPhone(request.getParameter("telephone"));
            customer.setAddress(request.getParameter("address"));
            customer.setAccountID(account.getAccountID());
            customerService.save(customer);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/confirm_address");
            requestDispatcher.forward(request, response);
        }
    }