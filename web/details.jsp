<%--
  Created by IntelliJ IDEA.
  User: Sumey
  Date: 2017/9/20
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.ItemsDao" %>
<%@ page import="entity.Items" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <style type="text/css">
        div {
            float: left;
            margin: 10px;
        }

        div dd {
            margin: 0px;
            font-size: 10pt;
        }

        div dd.dd_name {
            color: blue;
        }

        div dd.dd_city {
            color: #000;
        }
    </style>
    <title>信息展示</title>
</head>
<body>
<h1>信息展示</h1>
<center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <%--展示商品详情--%>
            <%
                ItemsDao itemsDao = new ItemsDao();
                Items item = itemsDao.getItemsById(Integer.parseInt(request.getParameter("id")));
                if (item != null) {
            %>
            <td width="70%" valign="top">
                <table>
                    <tr>
                        <td rowspan="4"><img src="imgs/<%=item.getPictuer()%>" width="200" height="160"></td>
                    </tr>
                    <tr>
                        <td><%=item.getName()%>
                        </td>
                    </tr>
                    <tr>
                        <td>产地：<%=item.getCity()%>
                        </td>
                    </tr>
                    <tr>
                        <td>价格：<%=item.getPrice()%>￥</td>
                    </tr>
                </table>
            </td>
            <%
                }
            %>
            <%
                String list = "";
                Cookie[] cookies = request.getCookies();
                if (cookies != null && cookies.length > 0) {
                    for (Cookie c : cookies) {
                        if ("ListViewCookie".equals(c.getName())) {
                            list = c.getValue();//得到原先的cookie值；
                            //System.out.println("getValue:"+c.getValue());
                        }
                    }
                }
                list += request.getParameter("id") + ",";//在原先的基础上追加新得到的request请求；
                //System.out.println("request:"+request.getParameter("id"));

                //如果浏览记录超过1000条，清零；
                String[] arr = list.split(",");
                if (arr != null && arr.length > 0) {
                    if (arr.length > 1000) {
                        list = "";
                    }
                }
                Cookie cookie = new Cookie("ListViewCookie", list);
                cookie.setMaxAge(60);//为了便于观察，设置cookie的最大生存周期是30秒；
                response.addCookie(cookie);
            %>
            <%--浏览过的商品--%>
            <td width="30%" bgcolor="#EEE" align="center">
                <br>
                <b>您浏览过的商品</b><br>
                <%--循环开始--%>
                <%
                    ArrayList<Items> list1 = itemsDao.getViewList(list);
                    if (list1 != null && list1.size() > 0) {
                        //System.out.println("list.size="+list1.size());
                        for (Items i : list1) {
                %>
                <div>
                    <dl>
                        <dt><a href="details.jsp?id=<%=i.getId()%>"><img src="imgs/<%=i.getPictuer()%>" width="200" height="160"></a></dt>
                        <dd class="dd_name"><%=i.getName()%>
                        </dd>
                        <dd class="dd_city">产地：<%=i.getCity()%>&nbsp;&nbsp;价格：<%=i.getPrice()%>￥</dd>
                    </dl>
                </div>
                <%
                        }
                    }
                %>
                <%--循环结束--%>
            </td>
        </tr>
    </table>
</center>
</body>
</html>