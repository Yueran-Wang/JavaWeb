<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>验证输入信息</title>
</head>
<body>
    <form action="" method="post">
        <p>要求密码中必须包含：数字和字母和中文</p>

        <p>
            <label for="password">密码:</label>
            <input type="text" id="password" name="password" placeholder="请输入 6-12 位密码">
        </p>

        <input type="submit" value="提交">
    </form>

    <%
        if("POST".equalsIgnoreCase(request.getMethod())) {
            // 密码读取
            String password = request.getParameter("password");

            // 清空字符串两端的空格
            if (password != null) {
                password = password.trim();
            }

            // 1. 检查密码是否包含数字、字母和中文字符
            boolean hasDigit = password.matches(".*\\d.*");
            boolean hasLetter = password.matches(".*[A-Za-z].*");
            boolean hasChinese = password.matches(".*[\\u4E00-\\u9FA5].*");

            if (!hasDigit || !hasLetter || !hasChinese) {
                out.print("<script language='javascript'>alert('密码必须同时包含数字、字母和中文字符！');history.back();</script>");
            }
            else {
                out.print("<script language='javascript'>alert('校验成功！');history.back();</script>");
            }
        }
    %>
</body>
</html>