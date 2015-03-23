<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

<title>查看用户信息</title>

</head>
<body>
	<form name="Form1" method="post">
		<br>
	    <table cellSpacing="1" cellPadding="5" width="580" align="center" bgColor="#eeeeee" style="border:1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" colSpan="4" background="${pageContext.request.contextPath }/images/b-info.gif">
					<font face="宋体" size="2"><strong>查看用户信息</strong></font>
				</td>
			</tr>
		    <tr>
		       <td align="center" bgColor="#f5fafe" class="ta_01">登&nbsp;&nbsp;陆&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
		       <td class="ta_01" bgColor="#ffffff">
		       		<input name="username" id="username" maxlength="25" size="20" value="xiaoy" disabled="disabled">
		       </td>
		       <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
		       <td class="ta_01" bgColor="#ffffff">
		       		<input name="name" id="name" maxlength="25" size="20" value="XiaoY" disabled="disabled">
		       </td>
		    </tr>
		    
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<font color="#FF0000">*</font></td>
		       	<td class="ta_01" bgColor="#ffffff">
		       		<input name="sex" id="sex" maxlength="25" size="20" value="男" disabled="disabled">
		       	</td>
			    <td align="center" bgColor="#f5fafe" class="ta_01">角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input name="role" id="role" maxlength="25" size="20" value="管理员" disabled="disabled">
				</td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">维护类别：<font color="#FF0000">*</font></td>
		       	<td class="ta_01" bgColor="#ffffff">
		       		<input name="maintainType" id="maintainType" maxlength="25" size="20" value="电工" disabled="disabled">
		       	</td>
			    <td align="center" bgColor="#f5fafe" class="ta_01">联系方式：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input name="phone" id="phone" maxlength="25" size="20" value="12322122322" disabled="disabled">
				</td>
			</tr>
			
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">注册日期：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input class="Wdate" type="text" size="20" value="2015-01-03" disabled="disabled">
				</td>
			</tr>
			<tr>
			    <td align="center" bgColor="#f5fafe" class="ta_01">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">
					<textarea name="address" id="address" style="width:95%" rows="3" cols="52" disabled="disabled"></textarea>
				</td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgcolor="#f5fafe">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
				<td class="ta_01" bgcolor="#ffffff" colspan="3">
					<textarea name="remark" id="remark" style="width:95%" rows="4" cols="52" disabled="disabled">fefefesfsefsefsefse</textarea>
				</td>
			</tr>
			
			<TR>
				<td  align="center"  colSpan="4"  class="sep1"></td>
			</TR>
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
				 <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
				<input style="font-size:12px; color:black; height=22;width=55"  type="button" value="返回"  name="Reset1"  onClick="history.back()">
					
				</td>
			</tr>
		</table>　
	</form>
</body>
</html>