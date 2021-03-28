package com.example.partnerwork;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "BackListServlet", value = "/BackListServlet")
public class BackListServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        int id =Integer.parseInt(request.getParameter("id"));
        int page=(id-1)/8+1;//转换成页码
        request.setAttribute("page",page);

        //数据库操作
        request.getRequestDispatcher("listPage.jsp").forward(request,response);
    }

    public void destroy() {
    }
}