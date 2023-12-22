<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>process</title>
</head>
<body>
    <%
        String numStr = request.getParameter("num");
        try {
            int num = Integer.parseInt(numStr);
            if (num > 50 && num <= 100) {
            %>
            <jsp:forward page="three.jsp" />
            <%
            } else if (num >= 1 && num <= 50) {
            %>
            <jsp:forward page="two.jsp" />
            <%
            } else {
            %>
            <jsp:forward page="error.jsp" />
            <%
                }
            } catch (NumberFormatException e) {
            %>
            <jsp:forward page="error.jsp" />
            <%
                }
    %>
</body>
</html>
