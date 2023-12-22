<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
<body>
    <h2>登录</h2>
    <form action="" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="text" name="pass"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"></td>
            </tr>
        </table>
    </form>
    <jsp:useBean id="C" class="test.Conn" scope="page"/>
    <jsp:useBean id="S" class="test.Selet" scope="page"/>
    <%
        if("post".equalsIgnoreCase(request.getMethod())) {
            String url = "jdbc:mysql://101.201.81.43:3306/test";
            String username = "test";
            String password = "test";
            C.setConn(url, username, password);
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            String sql = "SELECT * FROM admin WHERE username='" + name + "' AND password='" + pass + "'";
            ResultSet rs = S.executeQuery(C.getConn(), sql);
            if (rs.next()) {
                response.sendRedirect("book.jsp");
            } else {
                out.println("<script>alert('登录失败，请重试。'); resetForm();</script>");
            }
        }
    %>
</body>
</html>
