<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>猜对了！</title>
</head>
<body>
<%
    long startTime = (Long) session.getAttribute("startTime");
    long endTime = System.currentTimeMillis();
    long duration = (endTime - startTime) / 1000;
    int savedNumber = (Integer) session.getAttribute("save");
%>
<h3>恭喜，您猜对了！</h3>
<p>您共猜了 <%= session.getAttribute("count") %> 次</p>
<p>用时 <%= duration %> 秒</p>
<p>这个数字就是 <%= savedNumber %> </p>
<p>您必须关掉浏览器才能获得新的数</p>
</body>
</html>