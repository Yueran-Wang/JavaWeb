<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>计算测试</title>
    <style>
        .demonstrate {
            width: 240px;
            padding: 14px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }
        h1, h2, p {
            margin: 0;
            padding: 0;
        }
        form {
            margin-top: 40px;
        }
        form input[type="text"] {
            width: 150px;
        }
        hr {
            margin: 30px 0 25px 0;
        }
    </style>
</head>
<body>
    <div class="demonstrate">
        <h1>计算测试</h1>
        <form action="" method="post">
            <p>
                运算数1：<input type="text" name="num1">
                <br>
                运算数2：<input type="text" name="num2">
                <br>
                <input type="submit" name="operator" value="+">
                <input type="submit" name="operator" value="-">
                <input type="submit" name="operator" value="*">
                <input type="submit" name="operator" value="/">
            </p>
        </form>
        <hr style="height:5px; border-width:0; color:blue; background-color:blue">
        <%
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String operator = request.getParameter("operator");
        double result = 0;
        if (num1 != null && num2 != null && operator != null) {
            double n1 = Double.parseDouble(num1);
            double n2 = Double.parseDouble(num2);
            switch (operator) {
                case "+":
                    result = n1 + n2;
                    break;
                case "-":
                    result = n1 - n2;
                    break;
                case "*":
                    result = n1 * n2;
                    break;
                case "/":
                    if (n2 != 0) {
                        result = n1 / n2;
                        result = Double.parseDouble(String.format("%.1f", result));
                    } else {
                        result = 0;
                    }
                    break;
            }
            out.println("<h2>" + n1 + operator  + n2 + "=" + result + "</h2>");
        }
        %>
    </div>
</body>
</html>
