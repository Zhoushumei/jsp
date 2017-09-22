<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/15
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session内置对象</title>
</head>
<body>
<%
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date d=new Date(session.getCreationTime());
    session.setAttribute("username","admin");
    //session.setMaxInactiveInterval(10);
%>
Session创建的时间：<%=sdf.format(d)%><br>
Session的生存周期：<%=session.getMaxInactiveInterval()%>
</body>
</html>
