<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> <%-- 获取系统时间必须导入的--%> 
<%@ page import="java.text.*"%> <%-- 获取系统时间必须导入的--%> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>Top</TITLE>
<script type="text/javascript" src="${pageContext.request.contextPath }/My97DatePicker/WdatePicker.js"></script>

<style type=text/css>
body {
	font-size: 12px;
	margin: 0px;
	color: #000000;
	background-color: #ffffff
}

td {
	font-size: 12px;
	color: #000000
}

th {
	font-size: 12px;
	color: #000000
}
</style>

</head>
<body>
	<form id=Form1 name=Form1 method=post>
		<table border="0" width="100%" height="9" cellspacing="0"
			cellpadding="0">
			<tr>
				<td width="100%" colspan="4"
					background="${pageContext.request.contextPath }/images/title.jpg"
					height="58"></td>
			</tr>
			<tr>
				<td width="100%" height="1" bgcolor="#66C89C" colspan="4"><img
					border="0"
					src="${pageContext.request.contextPath }/images/titleline.jpg"
					width="100%" height="3"></td>
			</tr>
			<tr>
				<td width="20%" height="19" bgcolor="#0965CA">
					<table border="0" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td width="15%" align="center"><font color="#FFFFFF"><b>|</b></font></td>
							<td width="70%" align="center">
								<font color=#FFFFFF> 
									<!-- 显示当前时间 -->
									<b id="time">
									<script>
										document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());
										setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
									</script>
									</b>
								</font>
							</td>
							<td width="15%" align="center"><font color="#FFFFFF"><b>|</b></font></td>
						</tr>
					</table>
				<td width="16%" height="19" bgcolor="#0965CA">
					<table cellSpacing="2" height="19" cellPadding="0" width="100%" border="0">
						<tr>
							<td valign="top"><b><font color="#FFFFFF">欢迎您!&nbsp;&nbsp;&nbsp;${globle_user.userName }</font></b>
							</td>
						</tr>
					</table>
				</td>
				<td width="46%" height="19" bgcolor="#0965CA"></td>
				<td width="18%" height="19" bgcolor="#0965CA" align="center">
					<table border="0" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td width="100%" align="center"><A
								href="system/elecMenuAction_loading.do" target="mainFrame"><font
									color="#FFFFFF"><b>返回首页</b></font></a> <font color="#FFFFFF"><b>|</b></font>
								<a href="system/elecMenuAction_logout.do" target="_top"> <font
									color="#FFFFFF"><b>重新登录</b></font></a> <font color="#FFFFFF"><b>|</b></font>
								<a href="javascript:parent.exitsys()" target="_top"> <font
									color="#FFFFFF"><b>退出系统</b></font></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
