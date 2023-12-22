<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>矩形面积计算</title>
</head>
<body>
<jsp:useBean id="s" class="test.Show"/>
<form action="" method="post">
    <h1>矩形</h1>
    <p>长：<input type="text" name="length"></p>
    <p>宽：<input type="text" name="width"></p>
    <p><input type="submit" value="提交"></p>
</form>
<%
    String length = request.getParameter("length");
    String width = request.getParameter("width");
    if (length != null && width != null) {
        s.setLength(Double.parseDouble(length));
        s.setWidth(Double.parseDouble(width));
        out.println("面积为：" + s.getArea());
    }
%>
</body>
</html>
