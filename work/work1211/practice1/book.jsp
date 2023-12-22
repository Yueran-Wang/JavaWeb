<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
    // 在提交表单时处理用户选择的书籍
    String[] books = request.getParameterValues("book");
    if (books != null && books.length > 0) {
        // 获取session并创建购物车
        session.setAttribute("cart", books);
        // 重定向到 count.jsp 查看购物车
        response.sendRedirect("count.jsp");
    }
%>

<h3>请选择您要购买的书籍：</h3>
<form action="book.jsp" method="post">
    <label><input type="checkbox" name="book" value="Java教程"> Java教程</label><br>
    <label><input type="checkbox" name="book" value="数据库原理"> 数据库原理</label><br>
    <label><input type="checkbox" name="book" value="操作系统"> 操作系统</label><br>
    <label><input type="checkbox" name="book" value="C语言教程"> C语言教程</label><br>
    <input type="submit" value="提交">
</form>

<p>去结账：<a href="count.jsp">欢迎去count.jsp</a></p>

</body>
</html>
