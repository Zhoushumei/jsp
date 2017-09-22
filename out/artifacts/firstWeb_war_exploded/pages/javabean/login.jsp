<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/18
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登录</title>
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
%>--%>
<form name="loginForm" action="fail.jsp" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" value=""/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" value="" /></td>
        </tr>
       <%-- <tr>
            <td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked"/>十天内记住我的登录状态</td>
        </tr>--%>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登录"/><input type="reset" value="取消"/></td>
        </tr>
    </table>
</form>
</body>
</html>
