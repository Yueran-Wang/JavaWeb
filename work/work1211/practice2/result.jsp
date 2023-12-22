<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
  int savedNumber = (Integer) session.getAttribute("save");
  int userGuess = Integer.parseInt(request.getParameter("guess"));
  int count = (Integer) session.getAttribute("count");
  session.setAttribute("count", ++count); // 增加猜测次数

  if (userGuess == savedNumber) {
    response.sendRedirect("success.jsp");
  } else if (userGuess > savedNumber) {
    response.sendRedirect("large.jsp");
  } else {
    response.sendRedirect("small.jsp");
  }
%>
