package com.nmcnpm.web.controller.web;

import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@WebServlet(name = "ShowResultSearch")
public class ShowResultSearchController extends HttpServlet {

    @Inject
    IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long head = 0;
        String key = "";
        if (request.getParameter("head") != null) head = Integer.parseInt(request.getParameter("head"));
        if (request.getParameter("key") != null) key = request.getParameter("key").toLowerCase();
        List<Product> products = productService.findByKey(my_Levenshtein_level_one(key, "h"), 24);
        request.setAttribute("products", products);
        if (head != 0)
            request.setAttribute("head", productService.findById(head));
        else request.setAttribute("head",null);
        request.setAttribute("key", key);
        request.getRequestDispatcher("/templates/commons/result-search.jsp").forward(request, response);
    }

    public List<String> my_Levenshtein_level_one(String word, String key) {
        List<String> list_regex = new ArrayList<>();
        int lg = word.length();
        list_regex.add(word);
        for (int i = 0; i < lg; i++) {
            list_regex.add(word.substring(0, i) + key + word.substring(i, lg));
            list_regex.add(word.substring(0, i) + word.substring(i + 1, lg));
            list_regex.add(word.substring(0, i) + key + word.substring(i + 1, lg));
        }
        list_regex.add(word + key);
        list_regex.remove("");
        return list_regex;
    }
}
