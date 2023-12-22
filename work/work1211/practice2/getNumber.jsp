<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>猜数字游戏</title>
</head>
<body>
<%
    int number = (int)(Math.random() * 100) + 1;
    session.setAttribute("count", 0);
    session.setAttribute("save", number);
    session.setAttribute("startTime", System.currentTimeMillis());
%>

<h3>随机分给了你一个1到100之间的数，请猜！</h3>
<form action="result.jsp" method="post">
    <label>输入你的所猜的数</label>
    <label><input type="number" name="guess" min="1" max="100"></label>
    <input type="submit" value="提交">
</form>
</body>
</html>
