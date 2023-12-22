<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>乘法口诀表</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-container {
            max-width: 1080px;
            margin: auto;
            margin-top: 50px;
        }
        .multiplication-table {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container custom-container">
    <h2 class="mt-5 mb-3">乘法口诀表</h2>
    <table class="table table-bordered multiplication-table">
        <%
            for (int i = 1; i <= 9; i++) {
        %><tr><%
        for (int j = 1; j <= i; j++) {
    %><td><%= j + " x " + i + " = " + (i * j) %></td><%
        }
    %></tr><%
        }
    %>
    </table>
</div>
</body>
</html>
