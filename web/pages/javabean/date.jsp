<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/19
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date d=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    String s=sdf.format(d);
    out.print(s);
%>
