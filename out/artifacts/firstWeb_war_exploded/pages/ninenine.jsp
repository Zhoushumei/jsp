<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/13
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ page import="java.io.IOException" %>
<%--<%@ page import="static java.lang.System.out" %>--%>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<h1>九九乘法表</h1>
<%
    /*//使用HTML的方法
    String multiNine(){
    String s=null;
    for(int i=1;i<=9;i++){
        for(int j=1;j<=i;j++){
            s+=i+"*"+j+"="+i*j+"&nbsp&nbsp";
        }
        s+="<br>";
    }
    s=s.replace("null","");
        return s;
    }
    //使用脚本的方法；
    void multiNine2(JspWriter out) throws Exception{
        for (int i = 1; i <= 9; i++) {
            for (int j = 1; j <= i; j++) {
                out.println(i + "*" + j + "=" + i * j + "&nbsp&nbsp");
            }
            out.println("<br>");
        }
    }*/

    //关于内置对象；
    out.println("<h1>静夜思</h1>");
    out.println("窗前明月光<br>");
    out.println("疑似地上霜<br>");
    out.flush();
    // out.clear();这里会抛出异常；
    out.clearBuffer();//这里不会抛出异常；
    out.println("举头望明月<br>");
    out.println("低头思故乡<br>");
%>
缓冲区大小是<%=out.getBufferSize()%><br>
缓冲区剩余大小是<%=out.getRemaining()%><br>
是否自动清空缓冲区<%=out.isAutoFlush()%>
<%--<%=multiNine()%>--%>
<%--<%multiNine2(out);%>--%>
</body>
</html>
