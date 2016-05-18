<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.Fruit" %>
<%

Fruit fruit = (Fruit)request.getAttribute("fruit");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>第7章 練習問題</title>
</head>
<body>
<p>
<%= fruit.getName() %><%= fruit.getPrice() %>
</p>
</body>
</html>