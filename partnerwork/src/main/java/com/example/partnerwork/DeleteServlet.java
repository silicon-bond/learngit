package com.example.partnerwork;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "deleteServlet", value = "/DeleteServlet")
public class DeleteServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        int id =Integer.parseInt(request.getParameter("id"));
        int page =Integer.parseInt(request.getParameter("page"));
        request.setAttribute("id",id);
        request.setAttribute("page",page);
        //数据库操作
        request.getRequestDispatcher("listPage.jsp").forward(request,response);
    }

    public void destroy() {
    }
}