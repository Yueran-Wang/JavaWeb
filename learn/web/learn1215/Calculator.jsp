<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>计算器</title>
</head>
<body>
<jsp:useBean id="c" class="test.Calculator" scope="page" />
<jsp:setProperty name="c" property="*" />
<div style="text-align: center">
<form action="" method="post">
    <label>
        <input type="text" name="num1" value="<jsp:getProperty name='c' property='num1'/>" />
    </label>
    <label>
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
    </label>
    <label>
        <input type="text" name="num2" value="<jsp:getProperty name='c' property='num2'/>" />
    </label>
    <label>
        <input type="text" name="result" value="<jsp:getProperty name='c' property='result'/>" readonly />
    </label>
    <input type="submit" value="计算" />
</form>
</div>
</body>
</html>
