<%--
  Created by IntelliJ IDEA.
  User: Flut
  Date: 2021/3/26
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/paperinfo.css">
    <title>info Page</title>
</head>
<body>
<a href="mainPage.jsp" class="title_otherPage">Crwaler</a>
<%
    out.print("<a class=\"back\" href=\"/partnerwork_war_exploded/BackListServlet?id="+1/*(int)request.getAttribute("id")*/+"\">");
%><img src="png/back.png"></a>
<div class="main">
    <div class="paperinfo">
        <%
            //Paper paper=new paper;
                out.print("<a class=\"papertitle\">"+"GhostNet: More Features from Cheap Operations"/*paper.getTitle()*/+"</a>\n" +
                        "        <a href=\"#\" class=\""+"link"/*paper.getLink()*/+"\">(原文链接)</a>\n" +
                        "        <div class=\"tagbox\">\n" );
                for (int i=0;i<3/*tagNumber*/;++i)
                {
                    if(i%3==0)
                        out.print("<div class=\"tag1\" onclick=\"document.location.href=\'/partnerwork_war_exploded/SearchServlet?search="+1/*tag内容*/+"\'\">"+"Tagasdasdadas1"/*具体标签内容*/+"</div>");
                    if(i%3==1)
                        out.print("<div class=\"tag2\" onclick=\"document.location.href=\'/partnerwork_war_exploded/SearchServlet?search="+1/*tag内容*/+"\'\">"+"Tadeewdg2"/*具体标签内容*/+"</div>");
                    if(i%3==2)
                        out.print("<div class=\"tag3\" onclick=\"document.location.href=\'/partnerwork_war_exploded/SearchServlet?search="+1/*tag内容*/+"\'\">"+"Taeeeeeeeeeg3"/*具体标签内容*/+"</div>");
                }

                out.print("        </div>\n" +
                        "        <p class=\"info\">\n" +
                        "            为了减少神经网络的计算消耗，论文提出Ghost模块来构建高效的网络结果。\n" +
                        "            该模块将原始的卷积层分成两部分，先使用更少的卷积核来生成少量内在特\n" +
                        "            征图，然后通过简单的线性变化操作来进一步高效地生成ghost特征图\n" +
                        "            为了减少神经网络的计算消耗，论文提出Ghost模块来构建高效的网络结果。\n" +
                        "            该模块将原始的卷积层分成两部分，先使用更少的卷积核来生成少量内在特\n" +
                        "            征图，然后通过简单的线性变化操作来进一步高效地生成ghost特征图\n" +
                        "            为了减少神经网络的计算消耗，论文提出Ghost模块来构建高效的网络结果。\n" +
                        "            该模块将原始的卷积层分成两部分，先使用更少的卷积核来生成少量内在特\n" +
                        "            征图，然后通过简单的线性变化操作来进一步高效地生成ghost特征图\n" +
                        "            为了减少神经网络的计算消耗，论文提出Ghost模块来构建高效的网络结果。\n" +
                        "            该模块将原始的卷积层分成两部分，先使用更少的卷积核来生成少量内在特\n" +
                        "            征图，然后通过简单的线性变化操作来进一步高效地生成ghost特征图" +
                        /*paper.getInfo()*/
                        "</p>");
        %>
    </div>
</div>
</body>
</html>
