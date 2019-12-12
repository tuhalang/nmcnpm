package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.dao.IOrderedProductDAO;
import com.nmcnpm.web.dto.OrderDto;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.model.OrderedProduct;
import com.nmcnpm.web.service.ICustomerOrderService;
import com.nmcnpm.web.service.ICustomerService;
import com.nmcnpm.web.service.IOrderProductService;
import com.nmcnpm.web.service.IProductService;
import com.nmcnpm.web.utils.CookieUtils;
import com.nmcnpm.web.utils.SessionUtils;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ConfirmOrderController extends HttpServlet {
    @Inject
    IOrderProductService orderProductService;
    @Inject
    ICustomerOrderService customerOrderService;
    @Inject
    IProductService productService;
    @Inject
    ICustomerService customerService;

    CookieUtils cookieUtils = new CookieUtils();
    SessionUtils sessionUtils = new SessionUtils();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");

        OrderDto orderDto = new OrderDto();
        Map<String, String> card = cookieUtils.getAllValues(request);
        List<OrderedProduct> orderedProducts = new ArrayList<>();

        for (Map.Entry<String, String> entry : card.entrySet()) {
            Long id = Long.parseLong(entry.getKey());
            Long quantity = Long.parseLong(entry.getValue());
            OrderedProduct orderProduct = new OrderedProduct();
            orderProduct.setQuantity(quantity);
            orderProduct.setProductID(id);
            orderProduct.setProduct(productService.findById(id));
            orderedProducts.add(orderProduct);
        }

        orderDto.setListOfData(orderedProducts);

        request.setAttribute("orderDtos", orderDto);

        Long accountID = account.getAccountID();
        Customer customer = customerService.findByAccountId(accountID);
        request.setAttribute("customer", customer);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/templates/order-3.jsp");
        requestDispatcher.forward(request, response);

    }
}
