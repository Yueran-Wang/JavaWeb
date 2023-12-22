<%--
  Created by IntelliJ IDEA.
  User: wyrhe
  Date: 2023/11/13
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="test.GradeCalculator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Grade Result</title>
    <!-- 引入Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">成绩结果</h2>
    <%
        String name = request.getParameter("name");
        String gradeStr = request.getParameter("grade");
        int grade = 0;
        char level = 'E'; // 默认等级

        try {
            grade = Integer.parseInt(gradeStr);
            level = GradeCalculator.calculateLevel(grade); // 调用GradeCalculator的方法
        } catch (NumberFormatException e) {
            // 处理无效输入
        }
    %>
    <!-- 使用Bootstrap的表格样式 -->
    <table class="table table-bordered">
        <thead class="thead-light">
        <tr>
            <th>姓名</th>
            <th>成绩</th>
            <th>等级</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= name %></td>
            <td><%= grade %></td>
            <td><%= level %></td>
        </tr>
        </tbody>
    </table>
</div>
<!-- Optional Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


