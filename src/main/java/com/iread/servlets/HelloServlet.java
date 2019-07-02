package com.iread.servlets;


import com.google.gson.Gson;
import com.iread.models.Libro;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ReniH on 1/19/2018.
 */
@WebServlet("/nona")
public class HelloServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            response
                   .getOutputStream().print("hiiii");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            Gson gson = new Gson();
            String json = gson.toJson(new Libro());
            response
                    .getOutputStream().print(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
