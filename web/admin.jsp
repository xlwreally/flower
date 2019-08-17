<%@ page import="java.util.List" %>
<%@ page import="com.flower.dao.impl.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: xlwreally
  Date: 2019-08-14
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>超级用户管理</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/liMarquee.css" />

    <script src="js/jquery-1.11.3.min.js" type="text/javascript"
    charset="utf-8"></script>
                      <script src="js/jquery.liMarquee.js" type="text/javascript"
    charset="utf-8"></script>
                      <script type="text/javascript">
                                                    $(function() {
    $(".dowebok").liMarquee({
        scrollamount: 100,
        runshort: false
    });
    });
    </script>
    <script>
        function remove(s) {
            $.ajax({
                type:"get",
                url:"delete.do",
                data:{"id":s},
                async:false,
                cache:false,
                success:function(data){
                    if(data.code ==200){
                        alert();
                    }
                },
                error:function(data){
                    if(data.code ==999){
                        alert();
                    }
                }

            });

        }
    </script>
    <style>
        #menu tr td {
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<!-- 头部开始 -->
<%@include file="head.jsp"%>
<!-- 头部结束 -->
<%
    List<User> li=new UserDaoImpl().findAllUser();
    for (User users:li
         ) {
        String men="";
        String women="";
        if(users.getSex()==0)women="checked";
        else men="checked";
        out.print("<center><h1>"+users.getUsername()+"的信息</h1></center>");
        out.print("<form id=\"regF\" action=\"up.do\" method=\"post\">\n" +
                "\t\t<table align=\"center\">\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">帐号：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"userid\" name=\"userid\" value=\"" +users.getUserid()+
                "\"\t\t\t\t\tmaxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">名称：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"username\"\n value=\"" +users.getUsername()+
                "\"\t\t\t\t\tname=\"username\" maxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">手机号：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"tel\" name=\"tel\"\n value=\"" +users.getTel()+
                "\"\t\t\t\t\tmaxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">性别：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"radio\" id=\"sex\" name=\"sex\"\n" +
                "\t\t\t\t\tvalue=\"男\" maxlength=\"50\" "+men+">男<input type=\"radio\" id=\"sex\"\n" +
                "\t\t\t\t\tname=\"sex\" value=\"女\" maxlength=\"50\" "+women+">女</td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">生日：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"date\" id=\"birthday\"\n value=\"" +users.getBirthday()+
                "\"\t\t\t\t\tname=\"birthday\" maxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">密码：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"password\" id=\"password\"\n value=\"" +users.getPassword()+
                "\"\t\t\t\t\tmaxlength=\"50\" name=\"password\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td colspan=\"3\" align=\"center\"><a href=\"index.jsp\"\n" +
                "\t\t\t\t\ttarget=\"_self\"> <input type=\"submit\" value=\"修改\t\">" +"<button onclick='remove("+users.getUserid()+")' value='删除'>删除</button></td>\n"+
                "\t\t\t</tr>\n" +
                "\t\t</table>\n" +
                "\t</form>");
    }
%>
</body>
</html>
