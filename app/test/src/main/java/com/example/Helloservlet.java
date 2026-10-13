package com.example;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

@WebServlet ("/hello")
public class Helloservlet extends HttpServlet {

    @Override 
    protected void doGet(
        jakarta.servlet.http.HttpServletRequest request,
        jakarta.servlet.http.HttpServletResponse response) throws IOException {

        response.setContentType("text/plain; charset=UTF-8");
        response.getWriter().println("Hello Servlet");

      System.out.println("GETリクエストを受信しました");
     }
        
}