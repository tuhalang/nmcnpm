package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.ProductDto;
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

public class ConfirmAddressController  extends HttpServlet {
    @Inject
    ICustomerService customerService;
    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setCustomerID(1L);
        customer = customerService.findByID(customer);

        sessionUtils.putValue(request, "customer", customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-2.jsp");
        requestDispatcher.forward(request, response);
    }
}
