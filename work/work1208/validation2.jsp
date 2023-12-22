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
        <p>密码个数判断,改进要求密码最少6位，最多12位</p>

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

            // 1. 判断密码是否为 6 - 12 位
            if (password.length() < 6 || password.length() > 12) {
                out.print("<script language='javascript'>alert('密码长度必须至少为 6 位且不超过 12 位！');history.back();</script>");
            }
            else {
                out.print("<script language='javascript'>alert('校验成功！');history.back();</script>");
            }
        }
    %>
</body>
</html>