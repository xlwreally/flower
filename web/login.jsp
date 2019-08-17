<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/liMarquee.css" />
<style>
#menu tr td {
	font-size: 16px;
	font-weight: bold;
}

.dowebok {
	width: 950px;
	margin: 0px;
	display: inline-block;
}
</style>

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
</head>
<body>
	<!-- 头部开始 -->
    <%@include file="head.jsp"%>
	<!-- 头部结束 -->
<%
    String text=null;
    if(user==null){
        text="<form id=\"loginF\" action=\"login.do\" method=\"post\">\n" +
                "\t\t<table align=\"center\">\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">帐号：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"userid\" name=\"userid\" maxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">密码：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"password\" id=\"password\" maxlength=\"50\" name=\"password\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td colspan=\"3\" align=\"center\">\n" +
                "\t\t\t\t\t<input type=\"submit\" value=\"提交\">\n" +
                "\t\t\t\t\t</a>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                "\t\t\t\t\t<a href=\"reg.jsp\" target=\"_self\">\n" +
                "\t\t\t\t\t\t<font color=\"#ff0000\">免费注册</font>\n" +
                "\t\t\t\t\t</a>\n" +
                "\t\t\t\t</td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t</table>\n" +
                "\t</form>";
    }else if(user.getType()==0)response.sendRedirect("admin.jsp");
    else{
        text="<form id=\"regF\" action=\"up.do\" method=\"post\">\n" +
                "\t\t<table align=\"center\">\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">帐号：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"userid\" name=\"userid\" value=\"" +user.getUserid()+
                "\"\t\t\t\t\tmaxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">名称：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"username\"\n value=\"" +user.getUsername()+
                "\"\t\t\t\t\tname=\"username\" maxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">手机号：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"tel\" name=\"tel\"\n value=\"" +user.getTel()+
                "\"\t\t\t\t\tmaxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">性别：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"radio\" id=\"sex\" name=\"sex\"\n" +
                "\t\t\t\t\tvalue=\"男\" maxlength=\"50\" checked>男<input type=\"radio\" id=\"sex\"\n" +
                "\t\t\t\t\tname=\"sex\" value=\"女\" maxlength=\"50\">女</td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">生日：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"date\" id=\"birthday\"\n value=\"" +user.getBirthday()+
                "\"\t\t\t\t\tname=\"birthday\" maxlength=\"50\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td align=\"right\">密码：</td>\n" +
                "\t\t\t\t<td align=\"left\"><input type=\"password\" id=\"password\"\n value=\"" +user.getPassword()+
                "\"\t\t\t\t\tmaxlength=\"50\" name=\"password\"></td>\n" +
                "\t\t\t\t<td></td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t\t<tr>\n" +
                "\t\t\t\t<td colspan=\"3\" align=\"center\"><a href=\"index.jsp\"\n" +
                "\t\t\t\t\ttarget=\"_self\"> <input type=\"submit\" value=\"修改\t\">\n</td>\n" +
                "\t\t\t</tr>\n" +
                "\t\t</table>\n" +
                "\t</form>";
    }
%>

        <%=text%>
    <span style="color: red"> <%
         String str=(String)request.getAttribute("msg");
         if(str!=null)
         {
          out.print(str);
         }
        %> <span>
</body>
</html>