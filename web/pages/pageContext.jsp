<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/15
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext对象</title>
</head>
<body>
用户名：<%=pageContext.getSession().getAttribute("username")%>
<%
    //pageContext.forward("register.jsp");实现页面的跳转；
    pageContext.include("ninenine.jsp");
%>
</body>
</html>
