<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="test.Conn" %>
<%@ page import="test.Selet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* 基本样式 */
        body { font-family: Arial, sans-serif; }
        .container { width: 300px; margin: auto; padding-top: 50px; }
        input[type=text], input[type=password], input[type=submit] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        .error { color: red; }
    </style>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <form method="post">
        <input type="text" name="name" placeholder="Username">
        <input type="password" name="pass" placeholder="Password">
        <input type="submit" value="Login">
        <%
            if ("post".equalsIgnoreCase(request.getMethod())) {
                String url = "jdbc:mysql://101.201.81.43:3306/test";
                String username = request.getParameter("name");
                String password = request.getParameter("pass");
                Conn C = new Conn();
                Selet S = new Selet();
                C.setConn(url, username, password);
                String sql = "SELECT * FROM admin WHERE username='" + username + "' AND password='" + password + "'";
                ResultSet rs = S.executeQuery(C.getConn(), sql);
                if (rs.next()) {
                    response.sendRedirect("book.jsp");
                } else {
                    out.print("<span class='error'>登录失败，请重试。</span>");
                }
            }
        %>
    </form>
</div>
</body>
</html>
