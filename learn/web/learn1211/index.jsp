<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String username = null;
    if (session != null) {
        username = (String) session.getAttribute("username");
    }

    if (username == null) {
        // 用户未登录，重定向到登录页面
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h1>欢迎, <%= username %></h1>
</body>
</html>
