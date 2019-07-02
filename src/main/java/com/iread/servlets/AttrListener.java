package com.iread.servlets;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by ReniH on 1/19/2018.
 */

@WebListener
public class AttrListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        servletContextEvent
                .getServletContext()
                .setAttribute("servlet-context-attr", "test");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
    //...
}