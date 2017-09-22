<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/17
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>处理异常的页面</title>
</head>
<body>
异常消息是：<%=exception.getMessage()%><br>
异常具体是：<%=exception.toString()%>
</body>
</html>
