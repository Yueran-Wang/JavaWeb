<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算结果</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <style>
        .max-width {
            max-width: 300px;
        }
    </style>
</head>
<body>
<div class="container mt-5 max-width">
    <h2 class="mb-4">加油费用结果</h2>
    <%
        String amountStr = request.getParameter("amount");
        String petrolTypeStr = request.getParameter("petrolType");

        try {
            double amount = Double.parseDouble(amountStr);
            double petrolType = Double.parseDouble(petrolTypeStr);
            double totalCost = amount * petrolType;

            // 格式化输出总费用，保留两位小数
            String formattedTotalCost = String.format("%.2f", totalCost);

            out.println("<table class='table table-bordered'>");
            out.println("<tr><th>项目</th><th>详情</th></tr>");
            out.println("<tr><td>加油量</td><td>" + amount + " 升</td></tr>");
            out.println("<tr><td>油品价格</td><td>" + petrolType + " 元/升</td></tr>");
            out.println("<tr><td>总费用</td><td>" + formattedTotalCost + " 元</td></tr>");
            out.println("</table>");
        } catch (NumberFormatException e) {
            out.println("<div class='alert alert-danger'><p>输入错误，请输入有效的数字。</p></div>");
        }
    %>
</div>
</body>
</html>
