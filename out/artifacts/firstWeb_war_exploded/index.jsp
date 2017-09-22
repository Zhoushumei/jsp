<%@ page import="dao.ItemsDao" %>
<%@ page import="entity.Items" %>
<%@ page import="java.util.ArrayList" %> <%-- Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/14
  Time: 20:20
  To change this template use File | Settings | File Templates.--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>
    function login1() {
        window.open("pages/login.jsp");
    }
    function register1() {
        window.open("pages/register.jsp");

    }
</script>
<head>
  <title>用户登录</title>
</head>
<body>
<form action="" method="post">
<div id="firstPage">
  hello ,Please choose what do you want to do <br><br>
  <button id="login" type="button" onclick="login1()">登录</button>&nbsp&nbsp
  <button id="register" type="button" onclick="register1()">注册</button>
</div>
</form>
</body>
<style>
  #firstPage{
    text-align: center;
    margin-top:200px;
  }
</style>
</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        div{
            float:left;
            margin: 10px;
        }
        div dd{
            margin:0px;
            font-size:10pt;
        }
        div dd.dd_name
        {
            color:blue;
        }
        div dd.dd_city
        {
            color:#000;
        }
    </style>
    <title>信息展示</title>
</head>
<body >
<h1 >信息展示</h1>
<center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0" >
        <tr>
            <td>
                <%--商品循环开始--%>
                <%
                    ItemsDao itemsDao = new ItemsDao();
                    ArrayList<Items> list = itemsDao.getAllItems();
                    if (list != null && list.size() > 0) {
                        for (int i = 0; i < list.size(); i++) {
                            Items item = list.get(i);
                %>
                <div>
                    <dl>
                        <dt>
                            <a href="details.jsp?id=<%=item.getId()%>"><img src="imgs/<%=item.getPictuer()%>" width="120" height="90" alt=""border="1"></a>
                        </dt>
                        <dd class="dd_name"><%=item.getName()%>
                        </dd>
                        <dd class="dd_city"><%=item.getCity()%>&nbsp;&nbsp;价格：￥<%=item.getPrice()%>
                        </dd>
                    </dl>
                </div>
                <%--商品循环结束--%>
                <%
                        }
                    }
                %>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
