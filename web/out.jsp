<%--
  Created by IntelliJ IDEA.
  User: xlwreally
  Date: 2019-08-14
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    String path = request.getContextPath();
%>
<%
    session.removeAttribute("user");
    response.sendRedirect("index.jsp");
%>
</body>

