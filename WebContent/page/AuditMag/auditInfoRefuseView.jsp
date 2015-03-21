<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/uploadPreview/uploadPreview.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

<title>审核未通过故障详细信息</title>
<script>
   window.onload = function () { 
        new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
    }
</script>

</head>
<body>
<form name="Form1" method="post">
	<br>
    <table cellSpacing="1" cellPadding="5" width="580" align="center" bgColor="#eeeeee" style="border:1px solid #8ba7e3" border="0">
		<tr>
			<td class="ta_01" align="center" colSpan="4" background="${pageContext.request.contextPath }/images/b-info.gif">
				<font face="宋体" size="2"><strong>审核未通过故障详细信息</strong></font>
			</td>
		</tr>
	    <tr>
	       <td align="center" bgColor="#f5fafe" class="ta_01">区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域：<font color="#FF0000">*</font></td>
	       <td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="area" name="area" value="教室" disabled="disabled">
			</td>
			
	       <td align="center" bgColor="#f5fafe" class="ta_01">设&nbsp;&nbsp;备&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
	        <td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="deviceName" name="deviceName" value="计算机" disabled="disabled">
			</td>
	    </tr>
	    
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<font color="#FF0000">*</font></td>
			 <td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="version" name="version" value="A232" disabled="disabled">
			</td>
			
			<td align="center" bgColor="#f5fafe" class="ta_01">安装位置：<font color="#FF0000">*</font></td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="installationSite" name="installationSite" value="实验室" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">申报日期：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="Wdate" type="text" size="20" value="2015-03-18" disabled="disabled">
			</td>
			
		    <td align="center" bgColor="#f5fafe" class="ta_01">申报人联系方式：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="phone" name="phone"  value="12322133234" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">希望处理日期：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="Wdate" type="text" size="20" value="2013-12-23" disabled="disabled">
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">审核未通过日期：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="Wdate" type="text" size="20" value="2013-12-23" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">维护人员：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" value="tome" disabled="disabled">
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">维护人员联系方式：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" value="2342342342" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">维护状态：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" value="未完成" disabled="disabled">
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">优先级别：</td>
			<td class="ta_01" bgColor="#ffffff">
	       		<input type="radio" name="rank" value="C"  checked="checked">低&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">上传的图片：</td>
			<td class="ta_01" bgcolor="#ffffff" colspan="3">
				<div id="imgdiv"><img id="imgShow" width="500px" height="300px" /></div>
			</td>
		</tr>
		
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">故障原因：</td>
			<td class="ta_01" bgcolor="#ffffff" colspan="3">
				<textarea name="account" id="account" style="width:95%" rows="4" cols="52" disabled="disabled">rerggdrgrgd</textarea>
			</td>
		</tr>
		
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
			<td class="ta_01" bgcolor="#ffffff" colspan="3">
				<textarea name="remark" id="remark" style="width:95%" rows="4" cols="52" disabled="disabled">asdawdawdawdad</textarea>
			</td>
		</tr>
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">驳回原因：</td>
			<td class="ta_01" bgcolor="#ffffff" colspan="3">
				<textarea name="remark" id="remark" style="width:95%" rows="4" cols="52" disabled="disabled">sefsefse</textarea>
			</td>
		</tr>
		
		<TR>
			<td  align="center"  colSpan="4"  class="sep1"></td>
		</TR>
		<tr>
			<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
			<input style="font-size:12px; color:black; height=22;width=55"  type="button" value="关闭"  name="Reset1"  onClick="history.back()">
				
			</td>
		</tr>
	</table>　
</form>
</body>
</html>