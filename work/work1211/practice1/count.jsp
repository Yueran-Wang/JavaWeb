<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>count</title>
</head>
<body>

<%
    // 从session中获取姓名
    session = request.getSession(false);
    String userName = "访客"; // 默认值
    if (session != null) {
        userName = (String) session.getAttribute("username");
        if (userName == null || userName.trim().isEmpty()) {
            userName = "访客"; // 如果session中的用户名为null或空字符串，则设置为"访客"
        }
    }

    // 从session中获取购物车
    String[] cart = (session != null) ? (String[]) session.getAttribute("cart") : null;
    StringBuilder cartContents = new StringBuilder();

    if (cart != null && cart.length > 0) {
        for (String book : cart) {
            cartContents.append(book).append("<br>"); // 在字符串中加入 HTML 的换行标签
        }
    } else {
        cartContents.append("您的购物车是空的。");
    }
%>

<h3>这里是结账处，您的姓名以及选择的书籍：</h3>
<p>您的姓名：<%= userName %></p>
<p>购物车中的商品：<br><%= cartContents.toString() %></p>
<p>
    连接到book.jsp页面，继续购买书籍：<a href="book.jsp">欢迎去book.jsp！</a> <br>
    连接到main.jsp页面，继续购买书籍：<a href="main.jsp">欢迎去main.jsp！</a>
</p>
</body>
</html>
