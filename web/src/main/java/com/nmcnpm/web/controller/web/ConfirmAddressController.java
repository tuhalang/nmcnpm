package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ConfirmAddressController  extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setName("Phạm Văn Hùng");
        customer.setPhone("0386458774");
        customer.setAddress("lìn lìn nào đấy bách khoa hà nội");

        request.setAttribute("customer", customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-2.jsp");
        requestDispatcher.forward(request, response);
    }
}
