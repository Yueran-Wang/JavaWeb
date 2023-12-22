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
        <p>姓名不能为空<br>密码不能为空<br>重复密码不能为空<br>密码和重复密码必须相同</p>

        <p>
            <label for="username" class="col-sm-3 col-form-label text-sm-right">姓名:</label>
            <input type="text" id="username" name="username" placeholder="请输入姓名">
        </p>

        <p>
            <label for="password">密码:</label>
            <input type="text" id="password" name="password" placeholder="请输入 6-12 位密码">
        </p>

        <p>
            <label for="repeatPassword">重复密码:</label>
            <input type="text" id="repeatPassword" name="repeatPassword" placeholder="请重复输入一次密码">
        </p>

        <input type="submit" value="提交">
    </form>

    <%
        if("POST".equalsIgnoreCase(request.getMethod())) {
            // 1. 验证姓名是否为空
            String name = request.getParameter("username");
            if (name == null || name.isEmpty()) {
                out.print("<script language='javascript'>alert('用户名不能为空！');history.back();</script>");
                return;
            }

            // 密码读取
            String password = request.getParameter("password");
            String repeatPassword = request.getParameter("repeatPassword");

            // 清空字符串两端的空格
            if (password != null) {
                password = password.trim();
            }
            if (repeatPassword != null) {
                repeatPassword = repeatPassword.trim();
            }

            String errorMessage = null;

            // 1. 验证密码是否为空
            if (password == null || password.isEmpty()) {
                errorMessage = "密码不能为空！";
            }

            // 2.验证重复密码是否为空
            else if (repeatPassword == null || repeatPassword.isEmpty()) {
                errorMessage = "重复密码不能为空！";
            }

            // 3. 验证密码与重复密码是否一致
            else if (!password.equals(repeatPassword)) {
                errorMessage = "两次输入的密码不一致！";
            }

            // 显示错误消息
            if (errorMessage != null) {
                out.print("<script language='javascript'>alert('" + errorMessage + "');history.back();</script>");
            }
            else {
                out.print("<script language='javascript'>alert('校验成功！');history.back();</script>");
            }
        }
    %>
</body>
</html>