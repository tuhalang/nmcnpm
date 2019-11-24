package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.ICustomerOrderService;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IOrderProductService;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ConfirmOrderController extends HttpServlet {
    @Inject
    IOrderProductService orderProductService;
    @Inject
    ICustomerOrderService customerOrderService;

    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Customer customer = (Customer) sessionUtils.getValue(request, "customer");
        List<OrderDto> orderDtos = (List<OrderDto>) sessionUtils.getValue(request, "orderDtos");

        Long id = customerOrderService.save(orderDtos, customer);
        if (id > -1){
            orderProductService.save(id, orderDtos);
        }
    }
}
