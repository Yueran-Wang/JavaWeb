<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String studentId = request.getParameter("studentId");
    String singleChoice = request.getParameter("singleChoice");
    String trueFalse = request.getParameter("trueFalse");

    session.setAttribute("studentId", studentId);
    session.setAttribute("singleChoice", singleChoice);
    session.setAttribute("trueFalse", trueFalse);
%>
<html>
<head>
    <title>在线考试</title>
</head>
<body>
<h1>答案确认</h1>
<p>考号: <%= studentId %></p>
<h3>一、单项选择题（每题2分）</h3>
<p>1.<%= singleChoice %></p>
<h3>判断题（每题2分）</h3>
<p>2.<%= trueFalse %></p>
<form action="example3_3_6.jsp" method="post">
    <input type="submit" value="确认完毕">
    <a href="example3_3_4.jsp">重新答题</a>
</form>
</body>
</html>
