<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>中国礼品鲜花网---商品明细</title>
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
						<td width="320" align="center">欢迎您张三归来！ <a
							href="javascript:;">退出登陆</a>
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
	<!-- 头部结束 -->

	<center>
		<table>
			<tr>
				<td valign="top" align="middle" width="246" bgcolor="#f7f7f7">
					<table cellspacing="0" cellpadding="0" width="100%" border="0">
						<tr>
							<td align="middle"><img height="6" src="img/down.gif"
								width="10" align="absmiddle">久爱</td>
						</tr>
						<tr>
							<td align="middle"><a href="javascript:;"><img
									src="img/20062410511775971.jpg" alt="鲜花图片" width="335"
									height="298" border="0" borercolor="#bbbbbb"> </a><br> <br>
								</a></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>

					</table>
				</td>
				<td valign="top" align="center" width="715" height="500">
					<table cellspacing="0" cellpadding="0" width="95%" border="0">
						<tr>
							<td align="middle" height="20"><strong><font
									color="#ff6600">商 品 详 情</font> </strong></td>
						</tr>
					</table>
					<table bordercolor="#dfffbf" cellspacing="0" cellpadding="0"
						width="95%" border="1">
						<tr>
							<td valign="top" align="middle">
								<table cellspacing="0" cellpadding="2" width="100%" border="0">
									<tr>
										<td align="middle" width="80">编 号：</td>
										<td align="left"><font color="#ff0000">9010618</font> <font
											color="#545454">&nbsp;</font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle" width="80">类 别：</td>
										<td align="left"><font color="#545454">鲜花 </font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle" width="80">名 称：</td>
										<td align="left"><font color="#545454">久爱 </font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle" width="80">材 料：</td>
										<td align="left"><font color="#545454">9枝红玫瑰、绿叶，配草
										</font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle">包 装：</td>
										<td align="left"><font color="#545454">单面花束：桔红色皱纸双层包装，红色蝴蝶结
										</font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle">花 语：</td>
										<td align="left"><font color="#545454">带着美丽的爱情，来打动你的心，带着坚定的爱情，来守<br>
												护你到心，用你最深情的眼神，让我倾心，用我最需要的<br> 温柔，载付你的爱。
										</font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle">价 格：</td>
										<td align="left"><font color="#545454">【市场价】</font> <font
											color=#7a0026>￥116 </font> <font color="#545454">【现价】</font>
											<font color="red">￥106</font></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="middle">配送范围：</td>
										<td align="left"><span
											style="color: #545454; line-height: 23px;" id="">全国</span>
											<div id="" style="display: inline; float: right;">
												<a href="cart.jsp"><img src="img/buy.gif" width="141"
													height="23" border="0" align="absmiddle"></a>
											</div></td>
									</tr>
									<tr>
										<td colspan="2">
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tr>
													<td background="img/dot_line.gif"><img height="1"
														src="img/spacer.gif" width="1"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table bordercolor="#dfffbf" cellspacing="0" cellpadding="0"
						width="95%" border="1">
						<tr>
							<td align="center">
								<div align="center">
									<img src="img/201510301155382543689.jpg" width="100%"
										height="100%" /> <br> <img
										src="img/201510301155426865161.jpg" width="100%" height="100%" />
									<br> <img src="img/201510301155475691821.jpg" width="100%"
										height="100%" /> <br> <img
										src="img/201510301155526801440.jpg" width="100%" height="100%" />
									<br> <img src="img/201510301155526801441.png" width="100%"
										height="100%" /> <br> <img
										src="img/201510301155317366137.jpg" width="100%" height="100%" />
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>