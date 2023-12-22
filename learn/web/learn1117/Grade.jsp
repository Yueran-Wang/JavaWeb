<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩等级</title>
    <link href="bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2>成绩等级</h2>
    <%
        String name = request.getParameter("name");
        String scoreStr = request.getParameter("grade");
        int score = 0; // 初始化成绩变量
        String grade = "未知"; // 默认等级

        try {
            // 尝试解析成绩
            score = Integer.parseInt(scoreStr);
            if (score >= 90) {
                grade = "A";
            } else if (score >= 80) {
                grade = "B";
            } else if (score >= 70) {
                grade = "C";
            } else if (score >= 60) {
                grade = "D";
            } else {
                grade = "E";
            }
        } catch (NumberFormatException e) {
            // 处理无效或缺失的成绩
            grade = "无效成绩";
        }
    %>
    <table class="table">
        <tr>
            <th>姓名</th>
            <th>成绩</th>
            <th>等级</th>
        </tr>
        <tr>
            <td><%= name %></td>
            <td><%= scoreStr %></td> <!-- 显示原始成绩字符串 -->
            <td><%= grade %></td>
        </tr>
    </table>
</div>
</body>
</html>
