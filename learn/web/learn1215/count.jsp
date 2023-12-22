<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>计数器</title>
</head>
<body>
    <%
        int num = 1;
        session.setAttribute("new user", "y");
        if(application.getAttribute("count") == null)
            application.setAttribute("count", 1);
        else {
            num = (Integer) application.getAttribute("count");
            num++;
            application.setAttribute("count",num);
        }
        out.print("你是第" + num + "个访客");
    %>
</body>
</html>
