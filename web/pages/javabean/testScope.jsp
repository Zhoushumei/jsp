<%@ page import="com.javabean.po.Users" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/19
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试scope的作用域范围</title>
</head>
<body>
<jsp:useBean id="user" class="com.javabean.po.Users" scope="request"/>
<%--用户名：<jsp:getProperty name="user" property="username"/>--%>
<%--密码：<jsp:getProperty name="user" property="password"/>--%>
用户名：<%=((Users)request.getAttribute("user")).getUsername()%>
密码：<%=((Users)request.getAttribute("user")).getPassword()%>
</body>
</html>
