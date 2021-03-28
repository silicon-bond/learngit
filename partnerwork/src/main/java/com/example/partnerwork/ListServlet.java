package com.example.partnerwork;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "listServlet", value = "/ListServlet")
public class ListServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        //数据库获取最大页数
        int maxPage =10;
        request.setAttribute("page",maxPage);
        //数据库操作
        request.getRequestDispatcher("listPage.jsp").forward(request,response);
    }

    public void destroy() {
    }
}