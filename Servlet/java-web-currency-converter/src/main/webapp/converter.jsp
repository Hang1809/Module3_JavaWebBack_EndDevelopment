<%--
  Created by IntelliJ IDEA.
  User: MSI FPTSHOP
  Date: 7/11/2022
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<form method="post" action="/converter">
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
%>
<h1> Rate: <%=rate%></h1>
<h1> Rate: <%=usd%></h1>
<h1> Rate: <%=vnd%></h1>
</form>
</body>
</html>
