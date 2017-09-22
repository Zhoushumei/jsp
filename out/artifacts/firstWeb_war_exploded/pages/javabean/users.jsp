<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/19
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%--<%
    request.setCharacterEncoding("utf-8");
    String username="";
    String password="";
    Cookie[] cookies=request.getCookies();
    if(cookies!=null && cookies.length>0){
        for (Cookie c:cookies) {
            if ("username".equals(c.getName())){
                username= URLDecoder.decode(c.getValue(),"utf-8");
            }
            if ("password".equals(c.getName())){
                password=c.getValue();
            }
        }
    }
%>
用户名：<%=username%><br>
密码：<%=password%><br>--%>
<%
    request.setCharacterEncoding("utf-8");
    String username="";
    String password="";
    if (request.getParameter("username")!=null){
        username=request.getParameter("username");
    }
    if (request.getParameter("password")!=null){
        password=request.getParameter("password");
    }
%>
用户名：<%=username%><br>
密码：<%=password%><br>
电话：<%=request.getParameter("tel")%>
</body>
</html>
