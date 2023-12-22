<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Generated Table</title>
</head>
<body>
<%
    String rowsParam = request.getParameter("rows");
    String colsParam = request.getParameter("cols");
    int rows = 0;
    int cols = 0;

    try {
        rows = Integer.parseInt(rowsParam);
        cols = Integer.parseInt(colsParam);
    } catch(NumberFormatException e) {
        out.println("<p>Invalid input. Please enter numbers only.</p>");
    }

    if (rows > 0 && cols > 0) {
        out.println("<p>表格的行数 = " + rows + "<br>表格的列数 = " + cols + "</p>");
        out.println("<table border='1'>"); // 使用基础的HTML表格
        for (int i = 0; i < rows; i++) {
            out.println("<tr>");
            for (int j = 0; j < cols; j++) {
                out.println("<td>单元格 (" + (i + 1) + ", " + (j + 1) + ")</td>");
            }
            out.println("</tr>");
        }
        out.println("</table>");
    } else {
        out.println("<p>请输入有效的行数和列数。</p>");
    }
%>
</body>
</html>
