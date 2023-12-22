<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>提交信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-4">提交的信息：</h2>
    <br>
    <p class="lead">昵称: <%= request.getParameter("nickname") %></p>
    <p class="lead">密码: <%= request.getParameter("password") %></p>
    <%
        // 从请求中获取性别
        String gender = request.getParameter("gender");
        // 显示性别
        if ("male".equals(gender)) {
            out.println("<p class='lead'>性别：男</p>");
        } else if ("female".equals(gender)) {
            out.println("<p class='lead'>性别：女</p>");
        } else {
            out.println("<p class='lead'>性别未选择</p>");
        }
    %>
    <%
        // 获取表单提交的年月日数据
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String calendar = request.getParameter("calendarType");
        if ("gregorian".equals(calendar)) {
            calendar = "公历";
        } else if ("lunar".equals(calendar)) {
            calendar = "农历";
        }

        // 输出获取到的数据
        if(year != null && month != null && day != null && !year.isEmpty() && !month.isEmpty() && !day.isEmpty()) {
            out.println("<p class='lead'>生日：" + calendar + "历法" + year + "年" + month + "月" + day + "日</p>");
        } else {
            out.println("<p class='lead'>生日未完全选择</p>");
        }
    %>
    <%
        String country = request.getParameter("country");
        String province = request.getParameter("province");
        String city = request.getParameter("city");

        out.println("<p class='lead'>所在地: " + (country != null ? country : "未选择") +
                ", " + (province != null ? province : "未选择") +
                ",  " + (city != null ? city : "未选择") + "</p>");
    %>
    <p class="lead">手机号码: <%= request.getParameter("phone") %></p>
    <%
        String qqSpace = request.getParameter("qqSpace");
        String terms = request.getParameter("terms");

        boolean isQqSpaceChecked = "yes".equals(qqSpace);
        boolean isTermsChecked = "agreed".equals(terms);
    %>
    <p class='lead'>同时开通QQ空间: <%= isQqSpaceChecked ? "是" : "否" %></p>
    <p class='lead'>已阅读并同意服务条款和隐私政策: <%= isTermsChecked ? "是" : "否" %></p>

</div>
</body>
</html>
