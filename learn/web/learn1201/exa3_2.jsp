<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册信息</title>
    <style>
        div {
            border: 1px solid #ccc;
            padding: 5px;
            width: 800px;
            margin: 0 auto;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <%
        String name = request.getParameter("username");
        if(name.isEmpty())
            out.print("<script language='javascript'>alert('用户名不能为空！');window.location.href='exa3_1.html';</script>");
    %>

    <%
        String password = request.getParameter("password");
        String repeatPassword = request.getParameter("repeatPassword");

        if (password == null || password.isEmpty() || !password.equals(repeatPassword))
            out.print("<script language='javascript'>alert('密码不能为空且必须匹配！');window.location.href='exa3_1.html';</script>");
    %>

    <h2>显示注册信息</h2>
    <div>
        <p>用户名: <%= request.getParameter("username") %></p>
    </div>

    <div>
        <p>性别: <%= request.getParameter("gender") %></p>
    </div>

    <div>
        <p>出生日期: <%= request.getParameter("birthYear") %>年<%= request.getParameter("birthMonth") %>月</p>
    </div>

    <div>
        <!-- 性格处理 -->
        <%
            String[] personalityTraits = request.getParameterValues("personality");
            String personality = "";

            if (personalityTraits != null) {
                for (String trait : personalityTraits) {
                    personality += trait + " ";
                }
            }
        %>
        <p>性格: <%= personality %></p>
    </div>

    <div>
        <p>教育程度: <%= request.getParameter("education") %></p>
    </div>

    <div>
        <p>个人简介: <%= request.getParameter("bio") %></p>
    </div>

    <div>
        <p>注册时间: <%= new java.util.Date() %></p>
    </div>
</body>
</html>
