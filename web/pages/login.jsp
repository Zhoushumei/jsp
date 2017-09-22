<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/14
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<hr>
<form action="pages/login.jsp" name="loginForm" method="post">
    <%--action表示跳转到该页面，方式为get时--%>
    <%--地址栏显示http://localhost:8081/firstWeb/pages/doLogin.jsp?username=1&password=123--%>
    <%--为post时，显示--%>
    <%--http://localhost:8081/firstWeb/pages/doLogin.jsp--%>
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>