<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/18
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用jsp动作创建</title>
</head>
<body>
<jsp:useBean id="user" class="com.javabean.po.Users" scope="request"/>
<%
    user.setUsername("周书梅");
    user.setPassword("zhou");
%>
用户名：<%=user.getUsername()%><br>
密码：<%=user.getPassword()%>
<%
    request.getRequestDispatcher("testScope.jsp").forward(request,response);
%>
</body>
</html>
