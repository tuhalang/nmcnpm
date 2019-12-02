package com.nmcnpm.web.controller.web;

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

public class OrderController extends HttpServlet {

    @Inject
    IOrderProductService orderProductService;
    @Inject
    ICustomerOrderService customerOrderService;
    @Inject
    IProductService productService;
    @Inject
    ICustomerService customerService;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> card = CookieUtils.getInstance().getAllValues(request);
        List<OrderedProduct> orderedProducts = new ArrayList<>();

        for (Map.Entry<String, String> entry : card.entrySet()) {
            OrderedProduct orderProduct = new OrderedProduct();
            orderProduct.setQuantity(Long.parseLong(entry.getValue()));
            orderProduct.setProductID(Long.parseLong(entry.getKey()));
            orderProduct.setProduct(productService.findById(Long.parseLong(entry.getKey())));
            orderedProducts.add(orderProduct);
        }
        Account account = (Account) SessionUtils.getInstance().getValue(request, "USER");
        Long accountID = account.getAccountID();
        Customer customer = customerService.findByAccountId(accountID);
        Long id = customerOrderService.save(orderedProducts, customer);
        if (id > -1){
            orderProductService.save(id, orderedProducts);
        }
        for (Map.Entry<String, String> entry : card.entrySet()) {
            CookieUtils.getInstance().removeCookie(response, entry.getKey(), entry.getValue());
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/home");
        requestDispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }
}
