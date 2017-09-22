<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/14
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=UTF-8" );//设置响应的MIME类型；
    out.println("<h3>response内置对象</h3>");
    //out.flush();
    PrintWriter outer=response.getWriter();//获得输出流对象；
    outer.println("我是PrintWriter的对象");//打印结果提前于内置out对象；
    //response.sendRedirect("doRegister.jsp");//请求重定向，实现页面的跳转；
    request.getRequestDispatcher("doRegister.jsp").forward(request,response);
%>
