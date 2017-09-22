<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/19
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward动作</title>
</head>
<body>
<%--<jsp:forward page="users.jsp"/>--%>
<%
    request.getRequestDispatcher("users.jsp").forward(request,response);
%>
</body>
</html>
