package com.nmcnpm.web.controller.admin;

import com.nmcnpm.web.dto.CustomerDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.inject.Inject;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class UserController extends HttpServlet {

    @Inject
    ICustomerService customerService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("customerId") != null) {
            Long customerId = Long.parseLong(request.getParameter("customerId"));
            Customer customer = customerService.findById(customerId);
            request.setAttribute("customer", customer);
            request.getRequestDispatcher("/WEB-INF/admin_theme/customer_detail.jsp").forward(request, response);

        } else {
            int currentPage = 1;
            int elePerPage = 12;
            try {
                currentPage = Integer.parseInt(request.getParameter("currentPage"));
                elePerPage = Integer.parseInt(request.getParameter("elePerPage"));
            } catch (Exception x) {

            }
            CustomerDto customerDto = customerService.find(currentPage, elePerPage);

            request.setAttribute("customerDto", customerDto);
            request.getRequestDispatcher("/WEB-INF/admin_theme/customer.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
