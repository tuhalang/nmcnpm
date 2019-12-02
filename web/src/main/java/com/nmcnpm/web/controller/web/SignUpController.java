package com.nmcnpm.web.controller.web;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.nmcnpm.mail.MailSMTP;
import com.nmcnpm.mail.MailSystem;
import com.nmcnpm.web.model.Account;
import com.nmcnpm.web.model.Customer;
import com.nmcnpm.web.service.IAccountService;
import com.nmcnpm.web.service.ICustomerService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Base64;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class SignUpController extends HttpServlet {

    @Inject
    ICustomerService customerService;

    @Inject
    IAccountService accountService;

    public SignUpController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/templates/signup.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        BufferedReader rd = new BufferedReader(new InputStreamReader(req.getInputStream(),"UTF-8"));
        String line=rd.readLine();
        String decode=decodeString(line.split("=")[1]);
        String[] list=decode.split("&");
        String username = list[0].split("=")[1];
        String password = list[1].split("=")[1];
        String re_pass = list[2].split("=")[1];
        String name = list[3].split("=")[1];
        String phone = list[4].split("=")[1];
        String email = list[5].split("=")[1];
        String address = list[6].split("=")[1];

        if (password.equals(re_pass)) {
            Account account = new Account();
            account.setUsername(username);
            account.setPassword(password);

            Customer customer = new Customer();
            customer.setName(name);
            customer.setEmail(email);
            customer.setPhone(phone);
            customer.setAddress(address);

            if (accountService.valid(account) && !accountService.isExist(account)) {

                if (customerService.valid(customer) && !customerService.isExist(customer)) {
                    accountService.save(account);
                    customerService.save(customer);

                    MailSMTP mail = new MailSMTP("tuhalang007@gmail.com", customer.getEmail(), "Cảm ơn bạn đã đăng kí tài khoản!", "ĐĂNG KÍ TÀI KHOẢN THÀNH CÔNG !");
                    MailSystem.execute(mail);

                    resp.getWriter().print("1");
                    resp.getWriter().flush();
                } else {
                    resp.getWriter().print("customer is not valid!");
                    resp.getWriter().flush();
                    System.out.println("customer not valid!");
                }

            } else {
                resp.getWriter().print("account is not valid!");
                resp.getWriter().flush();
                System.out.println("account not valid!");
            }
        } else {
            resp.getWriter().print("password is not valid!");
            resp.getWriter().flush();
            System.out.println("password not valid!");
        }

    }
    public String decodeString(String encodedString) {
        byte[] bytes = Base64.getDecoder().decode(encodedString);
        return new String(bytes);
    }
}