<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="test.Conn" %>
<%@ page import="test.Selet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books</title>
    <style>
        /* 基本样式 */
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<%
    // 此处假设用户已经通过登录验证
    String url = "jdbc:mysql://101.201.81.43:3306/test";
    Conn C = new Conn();
    Selet S = new Selet();
    C.setConn(url, "test", "test"); // 使用数据库凭据

    String sql = "SELECT name,price FROM books WHERE price > 40";
    ResultSet rs = S.executeQuery(C.getConn(), sql);
    out.print("<table>");
    out.print("<tr><th>书名</th><th>价格</th></tr>");
    while (rs.next()) {
        out.print("<tr><td>" + rs.getString("name") + "</td><td>" + rs.getString("price") + "</td></tr>");
    }
    out.print("</table>");
%>
</body>
</html>
