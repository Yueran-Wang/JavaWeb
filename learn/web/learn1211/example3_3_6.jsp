<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String studentId = (String) session.getAttribute("studentId");
    String singleChoice = (String) session.getAttribute("singleChoice");
    String trueFalse = (String) session.getAttribute("trueFalse");

    // 模拟成绩计算，这里仅为示例
    int score = 0;
    if ("C".equals(singleChoice)) score += 2;
    if ("False".equals(trueFalse)) score += 2;

    // 清除session
    session.invalidate();
%>
<html>
<head>
    <title>在线考试 - 考试成绩</title>
</head>
<body>
<h1>考试成绩</h1>
<p>考号: <%= studentId %></p>
<p>成绩: <%= score %> 分</p>
</body>
</html>
