<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>three</title>
</head>
<body>
    <%@ include file="head.html" %>
    <p>This is three.jsp</p>
    <h2>传递过来的值是：<%= request.getParameter("num") %></h2>
</body>
</html>
