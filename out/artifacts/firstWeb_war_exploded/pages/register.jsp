<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/14
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="response.jsp" name="regForm" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td>
            <input type="checkbox" name="favorite" value="read">读书
            <input type="checkbox" name="favorite" value="music">音乐
            <input type="checkbox" name="favorite" value="movie">电影
            <input type="checkbox" name="favorite" value="internet">上网
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
<br>
<br>
<%--测试URL传参数--%>
<a href="doRegister.jsp?username=周书梅">点击我进行提交</a>
</body>
</html>
