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

<title>申报故障信息</title>
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
				<font face="宋体" size="2"><strong>申报故障信息</strong></font>
			</td>
		</tr>
	    <tr>
	       	<td align="center" bgColor="#f5fafe" class="ta_01">区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域：<font color="#FF0000">*</font></td>
	       	<td class="ta_01" bgColor="#ffffff">
	       		<select id="area" name="area" style="width: 138px">
					<option>------请选择------</option>				
					<option>教室</option>				
					<option>寝室</option>				
					<option>机房</option>				
				</select>
	       	</td>
	       	<td align="center" bgColor="#f5fafe" class="ta_01">安装位置：<font color="#FF0000">*</font></td>
	       	<td class="ta_01" bgColor="#ffffff">
	       		<select id="installationSite" name="installationSite" style="width: 138px">
					<option>------请选择------</option>				
					<option>A4049</option>				
					<option>B3098</option>				
					<option>D6732</option>				
					<option>A1234</option>				
					<option>R6742</option>				
					<option>T7787</option>				
				</select>
	       	</td>
	       
	    </tr>
	    
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">设&nbsp;&nbsp;备&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
	       	<td class="ta_01" bgColor="#ffffff">
	       		<select id="deviceName" name="deviceName" style="width: 138px">
					<option>------请选择------</option>				
					<option>计算机</option>				
					<option>灯管</option>				
					<option>空调</option>				
					<option>电视</option>				
					<option>风扇</option>				
					<option>桌子</option>				
				</select>
	       	</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<font color="#FF0000">*</font></td>
	       	<td class="ta_01" bgColor="#ffffff">
	       		<select id="version" name="version" style="width: 138px">
					<option>------请选择------</option>				
					<option>A232</option>				
					<option>DE34</option>				
					<option>23HY</option>				
					<option>8UY6</option>				
					<option>CCDG</option>				
					<option>MMHH</option>				
				</select>
	      	</td>
		</tr>
		<tr>
		    <td align="center" bgColor="#f5fafe" class="ta_01">申报人联系方式：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="" type="text" size="20" id="phone" name="phone">
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">预约日期：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input class="Wdate" type="text" size="20" onclick="WdatePicker({readOnly:true,highLineWeekDay:false})">
			</td>
		</tr>
		
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">优先级别：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input type="radio" name="rank" value="A">高&nbsp;&nbsp;&nbsp;&nbsp;
	       		<input type="radio" name="rank" value="B">中&nbsp;&nbsp;&nbsp;&nbsp;
	       		<input type="radio" name="rank" value="C"  checked="checked">低&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
		</tr>
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">设备图片：</td>
			<td class="ta_01" bgcolor="#ffffff" colspan="3">
				<input type="file" id="up_img" />
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
				<textarea name="account" id="account" style="width:95%" rows="4" cols="52"></textarea>
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
			</td>
		</tr>
	</table>　
</form>
</body>
</html>