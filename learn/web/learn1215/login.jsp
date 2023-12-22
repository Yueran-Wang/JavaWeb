<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录</title>
</head>
<body>
<jsp:useBean id="user" class="test.User"/>
<%
  request.setCharacterEncoding("UTF-8");
  String password = request.getParameter("password");
  if (password != null) {
    out.println("用户名: " + user.validatePassword(password) + "<br>");
  }
%>
<form action="login.jsp" method="post">
  <label for="username">用户名:</label>
  <input type="text" id="username" name="username"><br><br>
  <label for="password">密码:</label>
  <input type="password" id="password" name="password"><br><br>
  <input type="submit" value="登录">
</form>
</body>
</html>
