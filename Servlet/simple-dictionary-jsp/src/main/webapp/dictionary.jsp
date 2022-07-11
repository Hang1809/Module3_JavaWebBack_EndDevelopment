<%--
  Created by IntelliJ IDEA.
  User: MSI FPTSHOP
  Date: 7/11/2022
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary Jsp</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "thế nào");
    dic.put("book","cuốn sách");
    dic.put("computer","máy tính");

    String search = request.getParameter("search");
    String result = dic.get(search);

    if (result != null ){
       out.println("Word: " +search);
       out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
