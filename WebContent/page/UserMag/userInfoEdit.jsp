<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

<title>编辑用户信息</title>

</head>
<body>
	<form name="Form1" method="post">
		<br>
	    <table cellSpacing="1" cellPadding="5" width="580" align="center" bgColor="#eeeeee" style="border:1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" colSpan="4" background="${pageContext.request.contextPath }/images/b-info.gif">
					<font face="宋体" size="2"><strong>编辑用户信息</strong></font>
				</td>
			</tr>
		    <tr>
		       <td align="center" bgColor="#f5fafe" class="ta_01">登&nbsp;&nbsp;陆&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
		       <td class="ta_01" bgColor="#ffffff">
		       		<input name="deviceName" id="deviceName" maxlength="25" size="20">
		       </td>
		       <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
		       <td class="ta_01" bgColor="#ffffff">
		       		<input name="version" id="version" maxlength="25" size="20">
		       </td>
		    </tr>
		    
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<font color="#FF0000">*</font></td>
		       	<td class="ta_01" bgColor="#ffffff">
		       		<select id="sex" name="sex" style="width: 140px">
							<option>------请选择------</option>				
							<option>男</option>				
							<option>女</option>				
					</select>
		       	</td>
			    <td align="center" bgColor="#f5fafe" class="ta_01">角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</td>
				<td class="ta_01" bgColor="#ffffff">
					<select id="role" name="role" style="width: 140px">
						<option>------请选择------</option>				
						<option>管理员</option>				
						<option>业务用户</option>				
						<option>维护人员</option>				
					</select>
				</td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">维护类别：<font color="#FF0000">*</font></td>
		       	<td class="ta_01" bgColor="#ffffff">
					<select id="maintainType" name="maintainType" style="width: 140px">
						<option>------请选择------</option>				
						<option>电工</option>				
						<option>水工</option>				
						<option>泥工</option>				
						<option>木工</option>				
					</select>
		       	</td>
			    <td align="center" bgColor="#f5fafe" class="ta_01">联系方式：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input name="phone" id="phone" maxlength="25" size="20">
				</td>
			</tr>
			
			<tr>
			    <td align="center" bgColor="#f5fafe" class="ta_01">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">
					<textarea name="address" id="address" style="width:95%" rows="3" cols="52"></textarea>
				</td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgcolor="#f5fafe">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
				<td class="ta_01" bgcolor="#ffffff" colspan="3">
					<textarea name="remark" id="remark" style="width:95%" rows="4" cols="52"></textarea>
				</td>
			</tr>
			
			<TR>
				<td  align="center"  colSpan="4"  class="sep1"></td>
			</TR>
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
				<input type="button" name="BT_Submit" value="保存"  style="font-size:12px; color:black; height=22;width=55"   onClick="check_null()">
				 <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
				<input style="font-size:12px; color:black; height=22;width=55"  type="button" value="返回"  name="Reset1"  onClick="history.back()">
					
				</td>
			</tr>
		</table>　
	</form>
</body>
</html>