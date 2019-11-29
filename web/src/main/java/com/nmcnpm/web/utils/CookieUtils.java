/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nmcnpm.web.utils;

import java.util.HashMap;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuhalang
 */
public class CookieUtils {

    private static CookieUtils cookieUtils = null;

    public static CookieUtils getInstance() {
        if (cookieUtils == null) {
            cookieUtils = new CookieUtils();
        }
        return cookieUtils;
    }

    public void newCookie(HttpServletResponse response, String name, String value) {
        Cookie ck = new Cookie(name, value);
        response.addCookie(ck);
    }

    public String getDataByName(HttpServletRequest request, String name) {
        Cookie[] cks = request.getCookies();
        for (Cookie ck : cks) {
            if (ck.getName().equals(name)) {
                return ck.getValue();
            }
        }
        return null;
    }

    public HashMap<String, String> getAllValues(HttpServletRequest request) {
        HashMap<String, String> map = new HashMap<String, String>();
        Cookie[] cks = request.getCookies();
        for (Cookie ck : cks) {
            map.put(ck.getName(), ck.getValue());
        }
        return map;
    }

    public void removeCookie(HttpServletResponse response, String name) {
        Cookie ck = new Cookie(name, ""); 
        ck.setMaxAge(0); 
        response.addCookie(ck); 
    }
    
    public void updateData(HttpServletResponse response, String name, String newValue){
        newCookie(response, name, newValue);
    }
}
