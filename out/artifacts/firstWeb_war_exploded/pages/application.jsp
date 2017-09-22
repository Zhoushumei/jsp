<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/15
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application内置对象</title>
</head>
<body>
<%
    application.setAttribute("city","北京");
    application.setAttribute("postcode","1000");
    application.setAttribute("email","周周");
%>
<%=application.getAttribute("city")%><br>
application的属性有：<%
    Enumeration attributes=application.getAttributeNames();
    while (attributes.hasMoreElements()){
        out.print(attributes.nextElement()+"&nbsp&nbsp");
    }
%>
JSP引擎名及版本号：<%=application.getServerInfo()%>
</body>
</html>
