<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/14
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎注册</title>
</head>
<body>
<%--下面那句话解决中文乱码问题，因为Tomcat内部编码为ISO-8859-1--%>
<%request.setCharacterEncoding("utf-8");
  request.setAttribute("password",123456);
%>
用户名：<%=request.getParameter("username")%><br>
爱好：<%
    if(request.getParameterValues("favorite")!=null){
       String[] favorites=request.getParameterValues("favorite");
       for (int i=0;i<favorites.length;i++){
       out.println(favorites[i]+"&nbsp&nbsp");
        }
    }
%><br>
密码：<%=request.getAttribute("password")%><br>
MIME类型：<%=request.getContentType()%><br>
协议类型及版本号：<%=request.getProtocol()%><br>
服务器主机名：<%=request.getServerName()%><br>
端口号：<%=request.getServerPort()%><br>
客户端的ip：<%=request.getRemoteAddr()%><br>
上下文路径：<%=request.getContextPath()%><br>
真实路径：<%=request.getRealPath("doRegister.jsp")%><br>
</body>
</html>
