<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>one</title>
</head>
<body>
    <%@ include file="head.html" %>
    <form action="process.jsp" method="get">
        <label for="num">请输入1至100之间的整数：</label>
        <input type="text" id="num" name="num" required>
        <br>
        <input type="submit" value="送出">
    </form>
</body>
</html>
