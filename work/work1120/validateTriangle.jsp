<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>三角形验证结果</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-container {
            max-width: 720px;
            margin: auto;
            margin-top: 50px;
        }
        .result-heading {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container custom-container">
    <%
        int a = Integer.parseInt(request.getParameter("sideA"));
        int b = Integer.parseInt(request.getParameter("sideB"));
        int c = Integer.parseInt(request.getParameter("sideC"));

        if (a + b > c && a + c > b && b + c > a) {
            out.println("<h2 class='result-heading'>" + a + ", " + b + ", " + c + " 三边可以组成三角形。</h2>");
        } else {
            out.println("<h2 class='result-heading'>不可以组成三角形。</h2>");
        }
    %>
</div>
</body>
</html>
