<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>表格展示</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-container {
            max-width: 1080px;
            margin: auto;
            margin-top: 50px;
        }
        .info-text {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container custom-container">
    <%
        int rows = Integer.parseInt(request.getParameter("rows"));
        int columns = Integer.parseInt(request.getParameter("columns"));
        out.println("<p class='info-text'>表格的行数 = " + rows + "<br>表格的列数 = " + columns + "</p>");
    %>
    <table class="table table-bordered">
        <% for (int i = 0; i < rows; i++) { %>
        <tr>
            <% for (int j = 0; j < columns; j++) { %>
            <td>单元格 (<%= i + 1 %>,<%= j + 1 %>)</td>
            <% } %>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
