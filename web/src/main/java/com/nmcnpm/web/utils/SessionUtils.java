package com.nmcnpm.web.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * @author tuhalang
 * @created on 11/16/19
 */
public class SessionUtils {
    private static SessionUtils sessionUtils = null;
    
    private SessionUtils(){
        
    }

    public static SessionUtils getInstance() {
        if (sessionUtils == null) {
            sessionUtils = new SessionUtils();
        }
        return sessionUtils;
    }

    public void putValue(HttpServletRequest request, String key, Object value) {
        request.getSession().setAttribute(key, value);
    }

    public Object getValue(HttpServletRequest request, String key) {
        return request.getSession().getAttribute(key);
    }

    public void removeValue(HttpServletRequest request, String key) {
        request.getSession().removeAttribute(key);
    }
}
