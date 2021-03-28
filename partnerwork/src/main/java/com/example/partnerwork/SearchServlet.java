package com.example.partnerwork;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "searchServlet", value = "/SearchServlet")
public class SearchServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        String search = (String) request.getParameter("search");
        request.setAttribute("search",search);
        //System.out.println(search);
        //数据库操作
        request.getRequestDispatcher("listPage.jsp").forward(request,response);
    }

    public void destroy() {
    }
}