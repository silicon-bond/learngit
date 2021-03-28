<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.catalina.connector.Request" %><%--
  Created by IntelliJ IDEA.
  User: Flut
  Date: 2021/3/26
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/listPage.css">
    <title>List Page</title>
</head>
<body>
<div class="searchBox_listPage">
    <form method="get" action="/partnerwork_war_exploded/SearchServlet">
        <input class="searchBox_text" type="text" name="search" placeholder="Type to search">
    </form>
    <a class="searchBox_btn" href="#">
        <img src="png/search.png" width="25px">
    </a>
</div>
<a class="title_otherPage" href="mainPage.jsp">Crwaler</a>
<a class="leftpage_btn" href="chartPage.jsp"><img src="png/leftpage.png"></a>
<a class="rightpage_btn" href="chartPage.jsp"><img src="png/rightpage.png"></a>

<ul class="main">
    <%
      //list<Paper> list=new ArrayList<Paper>();
      for (int i=0;i<8/*list.length()*/;++i)
      {
          out.print("<li class=\"single_paper\">" +
                        "<a class=\"paper_number\">"+1/*list.get(i).getId()*/+"</a>"+
                        "<a class=\"paper_title\" href=\"/partnerwork_war_exploded/InfoServlet?id=1"/*list.get(i).getId()*/+"\">"+"GhostNet: More Features from Cheap Operations"+/*list.get(i).getTitle()*/"</a>"+
                        "<div class=\"buttonbox\">" +
                            "<a class=\"collect_btn\" href=\"/partnerwork_war_exploded/CollectServlet?id=1&page=1\">" +
                                "<img src=\"png/collected.png\">" +
                            "</a>" +
                            "<a class=\"delete_btn\" href=\"/partnerwork_war_exploded/DeleteServlet?id=1&page=1\">" +
                                "<img src=\"png/delete.png\">" +
                            "</a>" +
                        "</div>" +
                    "</li>");
      }
    %>
    <li class="single_paper">
        <a class="lastpage_btn" src="/partnerwork_war_exploded/NextPageServlet?page=2">
            <img src="png/lastpage.png">
        </a>
        <div class="pagenumber">
            <%
                out.print("<input type=\"text\" class=\"currentpage\" placeholder=\""+1/*request.getAttribute("page")*/+"\"/>");
            %>
            /<a class="maxpage">
                <%
                    int num=1;
                    if(request.getAttribute("page")!=null)
                        num=(int)request.getAttribute("page");
                    out.print(num);
                %>
        </a>
        </div>
        <a class="nextpage_btn" src="/partnerwork_war_exploded/LastPageServlet?page=2">
            <img src="png/nextpage.png">
        </a>
    </li>
</ul>
</body>
</html>
