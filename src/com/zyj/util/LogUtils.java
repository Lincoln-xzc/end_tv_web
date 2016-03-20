package com.zyj.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

public class LogUtils {

    public static final Logger ACCESS_LOG = LoggerFactory.getLogger("accessLog");
    
    /**
     * 记录接口访问日志
     *
     * @param request
     */
    public static void logAccess(String url,String query, String body) {
       
    	getAccessLog().info("url={}?{},body={} ", url, query, body);
    }

    public static String getBlock(Object msg) {
        if (msg == null) {
            msg = "";
        }
        return "[" + msg.toString() + "]";
    }

    public static Logger getAccessLog() {
        return ACCESS_LOG;
    }


}
