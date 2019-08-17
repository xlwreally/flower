<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
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

	<form id="regF" action="reg.do" method="post">
		<table align="center">
			<tr>
				<td align="right">帐号：</td>
				<td align="left"><input type="text" id="userid" name="userid"
					maxlength="50"></td>
				<td></td>
			</tr>
			<tr>
				<td align="right">名称：</td>
				<td align="left"><input type="text" id="username"
					name="username" maxlength="50"></td>
				<td></td>
			</tr>
			<tr>
				<td align="right">手机号：</td>
				<td align="left"><input type="text" id="tel" name="tel"
					maxlength="50"></td>
				<td></td>
			</tr>
			<tr>
				<td align="right">性别：</td>
				<td align="left"><input type="radio" id="sex" name="sex"
					value="男" maxlength="50">男<input type="radio" id="sex"
					name="sex" value="女" maxlength="50">女</td>
				<td></td>
			</tr>
			<tr>
				<td align="right">生日：</td>
				<td align="left"><input type="date" id="birthday"
					name="birthday" maxlength="50"></td>
				<td></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td align="left"><input type="password" id="password"
					maxlength="50" name="password"></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><a href="index.jsp"
					target="_self"> <input type="submit" value="提交	">
				</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="login.jsp" target="_self"> <font
						color="#ff0000">使用已有帐号登陆</font>
				</a></td>
			</tr>
		</table>
	</form>
	<span style="color: red"> <%
         String str=(String)request.getAttribute("msg");
         if(str!=null)
         {
          out.print(str);
         }
        %> <span>
</body>
</html>