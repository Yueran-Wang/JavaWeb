<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>太大了</title>
</head>
<body>
<h3>所猜的数比实际的数大，请再猜：</h3>
<form action="result.jsp" method="post">
    <label><input type="number" name="guess" min="1" max="100"></label>
    <input type="submit" value="提交">
</form>
</body>
</html>