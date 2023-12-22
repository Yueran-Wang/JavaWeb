<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册信息</title>
</head>
<body>
    <%
        // 用户名判断
        String name = request.getParameter("username");
        if(name == null || name.isEmpty()) {
            out.print("<script language='javascript'>alert('用户名不能为空！');window.location.href='exa3_1.html';</script>");
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
        // 2. 验证密码是否有非法字符
        else {
            String specialCharacters = "!@#$%^&*()_+[]{}|;:',.<>/?";
            boolean invalidCharFound = false;
            for (char ch : password.toCharArray()) {
                if (!Character.isLetterOrDigit(ch) && specialCharacters.indexOf(ch) < 0) {
                    invalidCharFound = true;
                    break;
                }
            }
            if (invalidCharFound) {
                errorMessage = "密码包含非法字符！";
            }
            // 3. 验证密码与重复密码是否一致
            else if (!password.equals(repeatPassword)) {
                errorMessage = "两次输入的密码不一致！";
            }
        }

        // 显示错误消息
        if (errorMessage != null) {
            out.print("<script language='javascript'>alert('" + errorMessage + "');window.location.href='exa3_1.html';</script>");
            return;
        }

        // 4. 检查密码长度是否至少为 6 位并且不超过 12 位
        if (password.length() < 6 || password.length() > 12) {
            out.print("<script language='javascript'>alert('密码长度必须至少为 6 位且不超过 12 位！');window.location.href='exa3_1.html';</script>");
            return;
        }

        // 5. 检查密码是否包含数字、字母和中文字符
        boolean hasDigit = password.matches(".*\\d.*");
        boolean hasLetter = password.matches(".*[A-Za-z].*");
        boolean hasChinese = password.matches(".*[\\u4E00-\\u9FA5].*");

        if (!hasDigit || !hasLetter || !hasChinese) {
            out.print("<script language='javascript'>alert('密码必须同时包含数字、字母和中文字符！');window.location.href='exa3_1.html';</script>");
            return;
        }

    %>

    <h2 class="mb-3">显示注册信息</h2>
    <p class="lead">用户名: <%= name %></p>
    <p class="lead">性别: <%= request.getParameter("gender") %></p>
    <p class="lead">出生日期: <%= request.getParameter("birthYear") %>年<%= request.getParameter("birthMonth") %>月</p>

    <!-- 性格处理 -->
    <%
        String[] personalityTraits = request.getParameterValues("personality");
        StringBuilder personality = new StringBuilder();

        if (personalityTraits != null) {
            for (String trait : personalityTraits) {
                personality.append(trait).append(" ");
            }
        }
    %>
    <p class="lead">性格: <%= personality.toString() %></p>

    <p class="lead">教育程度: <%= request.getParameter("education") %></p>
    <p class="lead">个人简介: <%= request.getParameter("bio") %></p>
    <p class="lead">注册时间: <%= new java.util.Date() %></p>
</body>
</html>
