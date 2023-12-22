<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册信息</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <%
            // 用户名判断
            String name = request.getParameter("username");
            if(name == null || name.isEmpty())
            {
                out.print("<script language='javascript'>alert('用户名不能为空！');window.location.href='exa3_1.html';</script>");
                return;
            }

            // 密码判断
            String password = request.getParameter("password");
            String repeatPassword = request.getParameter("repeatPassword");

            // 清空字符串两端的空格
            if (password != null) { password = password.trim(); }
            if (repeatPassword != null) { repeatPassword = repeatPassword.trim(); }

            // 1. 检查密码是否与重复密码一致
            if (!password.equals(repeatPassword)) {
                out.print("<script language='javascript'>alert('两次输入的密码不一致！');window.location.href='exa3_1.html';</script>");
                return;
            }

            // 2. 检查是否包含非法字符
            String specialCharacters = "!@#$%^&*()_+[]{}|;:',.<>/?"; // 定义有效的特殊字符
            boolean invalidCharFound = false;
            for (char ch : password.toCharArray()) {
                if (!Character.isLetterOrDigit(ch) && specialCharacters.indexOf(ch) < 0) {
                    invalidCharFound = true;
                    break;
                }
            }
            if (invalidCharFound) {
                out.print("<script language='javascript'>alert('密码包含非法字符！');window.location.href='exa3_1.html';</script>");
                return;
            }

            // 3. 检查密码长度是否大于 6 位且小于 12 位
            if (password.length() < 7 || password.length() > 12) {
                out.print("<script language='javascript'>alert('密码长度必须大于 6 位且小于 12 位！');window.location.href='exa3_1.html';</script>");
                return;
            }

            // 4. 检查是否包含至少三种字符类型
            boolean hasUpperCase = password.matches(".*[A-Z].*");
            boolean hasLowerCase = password.matches(".*[a-z].*");
            boolean hasDigit = password.matches(".*\\d.*");
            boolean hasSpecial = password.matches(".*[" + Pattern.quote(specialCharacters) + "].*");

            int countTypes = 0;
            if (hasUpperCase) countTypes++;
            if (hasLowerCase) countTypes++;
            if (hasDigit) countTypes++;
            if (hasSpecial) countTypes++;

            if (countTypes < 3) {
                out.print("<script language='javascript'>alert('密码必须包含数字、大小写字母和特殊字符中的至少三种类型！');window.location.href='exa3_1.html';</script>");
                return;
            }
        %>

        <h2 class="mb-3">显示注册信息</h2>
        <div class="mb-3">
            <p class="lead">用户名: <%= name %></p>
        </div>

        <div class="mb-3">
            <p class="lead">性别: <%= request.getParameter("gender") %></p>
        </div>

        <div class="mb-3">
            <p class="lead">出生日期: <%= request.getParameter("birthYear") %>年<%= request.getParameter("birthMonth") %>月</p>
        </div>

        <div class="mb-3">
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
        </div>

        <div class="mb-3">
            <p class="lead">教育程度: <%= request.getParameter("education") %></p>
        </div>

        <div class="mb-3">
            <p class="lead">个人简介: <%= request.getParameter("bio") %></p>
        </div>

        <div class="mb-3">
            <p class="lead">注册时间: <%= new java.util.Date() %></p>
        </div>
    </div>
</body>
</html>
