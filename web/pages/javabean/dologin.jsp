<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/18
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String[] isUseCookies=request.getParameterValues("isUseCookie");
    if(isUseCookies!=null && isUseCookies.length>0){
        String username= URLEncoder.encode(request.getParameter("username"),"utf-8");
        String password=request.getParameter("password");
        Cookie usernameCookie=new Cookie("username",username);
        Cookie passwordCookie=new Cookie("password",password);
        usernameCookie.setMaxAge(864000);//最大生存期限是10天；
        passwordCookie.setMaxAge(864000);
        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);
    }
    else {
        Cookie[] cookies=request.getCookies();
        if (cookies!=null && cookies.length>0){
            for (Cookie c : cookies) {
                if (c.getName().equals("username")||c.getName().equals("password")){
                    c.setMaxAge(0);
                    response.addCookie(c);//设置cookie失效并且重新保存；
                }
            }
        }
    }
%>
<a href="users.jsp" target="_blank">查看用户信息</a>
</body>
</html>
