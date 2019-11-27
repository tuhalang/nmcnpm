package com.nmcnpm.web.controller.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.json.JsonMapper;
import com.nmcnpm.web.dto.ProductDto;
import com.nmcnpm.web.model.Product;
import com.nmcnpm.web.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//@WebServlet(name = "ResultSearch")
public class ResultSearch extends HttpServlet {

    @Inject
    IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key="";
        if (request.getParameter("key")!=null) key=request.getParameter("key").toString().toLowerCase();
        List<Product> products=productService.findByKey(my_Levenshtein_level_one(key,"h"),5);
        ObjectMapper mapper=new JsonMapper();
        String s=mapper.writeValueAsString(products);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(s);
    }
    public List<String> my_Levenshtein_level_one(String word,String key){
        List<String> list_regex = new ArrayList<>();
        int lg = word.length();
        list_regex.add(word);
        for (int i = 0; i < lg; i++) {
            list_regex.add(word.substring(0, i) + key + word.substring(i, lg));
            list_regex.add(word.substring(0, i) + word.substring(i+1, lg));
            list_regex.add(word.substring(0, i) + key + word.substring(i+1, lg));
        }
        list_regex.add(word + key);
        list_regex.remove("");
        return list_regex;
    }
}
