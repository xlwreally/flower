<%@ page import="com.flower.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    User user= (User) session.getAttribute("user");
    String welcome=null;
    if(user==null){
        welcome="欢迎光临 <a href=\"login.jsp\">登陆</a>";
    }else{
        welcome="欢迎您"+user.getUsername()+"归来 <a href=\"out.jsp\">退出登陆</a>";
    }
%>
<table width="960" align="center">
    <tr>
        <td height="44" background="img/flower_menu_bg.jpg">
            <table id="menu" width="960">
                <tr>
                    <td width="80" align="center"><a href="index.jsp">首页</a></td>
                    <td width="80" align="center"><a href="login.jsp">我的帐户</a></td>
                    <td width="80" align="center"><a href="myorder.jsp">订单查询</a>
                    </td>
                    <td width="80" align="center"><a href="cart.jsp">购物车</a></td>
                    <td width="80" align="center"><a href="reg.jsp">免费注册</a></td>
                    <td width="320" align="center"><%=welcome	%>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <div id="dowebok" class="dowebok">
                <a href="detail.jsp"><img src="img/201510301155317366137.jpg"
                                          width="200" height="150" title="久爱"></a> <a href="detail.jsp"><img
                    src="img/201510301155382543689.jpg" width="200" height="150"
                    title="美丽的诺言"></a> <a href="detail.jsp"><img
                    src="img/201510301155426865161.jpg" width="200" height="150"
                    title="微笑洋溢"></a> <a href="detail.jsp"><img
                    src="img/201510301155526801440.jpg" width="200" height="150"
                    title="卿本佳人"></a> <a href="detail.jsp"><img
                    src="img/200552912192329529.jpg" width="200" height="150"
                    title="爱的味道"></a>
            </div>
        </td>
    </tr>
    <tr>
        <td valign="middle" background="img/banner_bg1.gif"><img
                src="img/banner_bg2.gif" width="2" height="29"></td>
    </tr>
</table>
