<%--
  Created by IntelliJ IDEA.
  User: Flut
  Date: 2021/3/26
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/chartPage.css">
    <title>Chart Page</title>
</head>
<body>
<a class="title_otherPage" href="mainPage.jsp">Crwaler</a>
<a class="leftpage_btn" href="listPage.jsp"><img src="png/leftpage.png"></a>
<a class="rightpage_btn" href="listPage.jsp"><img src="png/rightpage.png"></a>
<div class="main">
    <div class="chart"></div>
    <div class="chartname">图表名称</div>
    <div class="selectbox">
        <input type="radio" name="select" id="slide_1" checked>
        <input type="radio" name="select" id="slide_2">
        <input type="radio" name="select" id="slide_3">
    </div>
    <div class="slide">
        <label for="slide_1" class="slide_btn_1"></label>
        <label for="slide_2" class="slide_btn_2"></label>
        <label for="slide_3" class="slide_btn_3"></label>
    </div>
</div>
</body>
</html>
