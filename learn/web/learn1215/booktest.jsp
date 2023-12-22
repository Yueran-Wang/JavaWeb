<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MySql</title>
</head>
<body>
<jsp:useBean id="C" class="test.Conn" scope="page"/>
<jsp:useBean id="S" class="test.Selet" scope="page"/>
<%
    // 数据库连接
    String url = "jdbc:mysql://127.0.0.1:3306/test";
    String username = "test";
    String password = "test";
    C.setConn(url, username, password);

    // 数据库查询
    String sql = "SELECT name,price FROM books WHERE price > 40";
    ResultSet rs = S.executeQuery(C.getConn(), sql);
    out.print("<table border='1'>");
    out.print("<tr>");
    out.print("<td>书名</td>");
    out.print("<td>价格</td>");
    out.print("</tr>");
    while (rs.next()) {
        out.print("<tr>");
        out.print("<td>" + rs.getString("name") + "</td>");
        out.print("<td>" + rs.getString("price") + "</td>");
        out.print("</tr>");
    }
%>

<%
    if(request.getParameter("btn")!=null) {
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        sql = "SELECT * FROM admin WHERE username='" + name + "' AND password='" + pass + "'";
        rs = S.executeQuery(C.getConn(), sql);
        if (rs.next()) {
            out.print("登录成功");
        } else {
            out.print("登录失败");
        }
    }
%>

<form>
    <input type="text" name="name" value="">
    <input type="text" name="pass" value="">
    <input type="submit" name="btn" value="提交">
</form>

</body>
</html>
