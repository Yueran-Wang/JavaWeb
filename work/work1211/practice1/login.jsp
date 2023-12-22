<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
<body>

<%
    // 检查是否有表单提交
    String userName = request.getParameter("username");
    if (userName != null && !userName.trim().isEmpty()) {
        // 如果有提交，设置 session
        session.setAttribute("username", userName);

        // 重定向到 book.jsp
        response.sendRedirect("book.jsp");
        return;
    }
%>

<h3>欢迎来到本页面，请输入你的姓名：</h3>
<form action="login.jsp" method="post">
    <label><input type="text" id="name" name="username" /></label>
    <input type="submit" value="送出" />
</form>
</body>
</html>
