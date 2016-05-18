<%@ page contentType="text/html; charset=UTF-8" import = "model.*" %>
<% Employee emp = new Employee("00001","なまえ"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4.6練習問題</title>
</head>
<body>
<% for(int i = 0; i < 10; i++) { %>
<% if(i % 3 == 0) { %>
<p style="color:red">
<% } else { %>
<p>
<% } %>
IDは<%= emp.getId() %>、名前は<%= emp.getName() %>です</p>
<% } %>
</body>
</html>