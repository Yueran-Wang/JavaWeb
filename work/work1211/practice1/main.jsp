<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>main</title>
</head>
<body>

<%
    String userName = (String) session.getAttribute("username");

    // 检查是否有新的用户名提交
    String newUserName = request.getParameter("newUserName");
    if (newUserName != null && !newUserName.trim().isEmpty()) {
        userName = newUserName.trim();
        session.setAttribute("username", userName); // 更新 session 中的用户名

        // 重定向到 count.jsp
        response.sendRedirect("count.jsp");
        return; // 结束响应，防止后续代码执行
    }
%>

<h3>当前用户名: <%= userName != null ? userName : "未设置" %></h3>

<form action="main.jsp" method="post">
    <label for="newUserName">修改用户名:</label>
    <input type="text" id="newUserName" name="newUserName" placeholder="输入新的用户名">
    <input type="submit" value="更新">
</form>

</body>
</html>
