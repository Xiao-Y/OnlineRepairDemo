<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>故障信息列表</title>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>

<style type="text/css">
* {
	font-size: 12px;
}
</style>

<script type="text/javascript">
	/**
	//超链接在新窗口显示 
	$(document).ready(function(){
		$("a").attr("target", "_blank");
	});
	*/
	//清除查询条件
	$().ready(function(){
		$("#BT_Reset").click(function(){
			$("#deviceName").val("");
			$("#version").val("");
			$("#producer").val("");
			$("#rank").val("");
		});
	});
</script> 

</head>
<body>
	<!-- 查询输入start -->
	<form action="">
		<table cellspacing="1" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
			<tr>
				<td class="ta_01" colspan=6 align="center" background="${pageContext.request.contextPath }/images/b-info.gif">
					<font face="宋体" size="2"><strong>故障信息列表</strong></font>
				</td>
			</tr>
			<tr height=10>
				<td></td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				设备名：</td>
				<td class="ta_01" >
					<input name="loginName" id="loginName" size="21">
				</td>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				型号：</td>
				<td class="ta_01" >
					<input name="username" id="username" size="21">
				</td>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				安装位置：</td>
				<td class="ta_01" >
					<select id="role" name="role" style="width: 140px">
						<option>------请选择------</option>				
						<option>教室</option>				
						<option>机房</option>				
						<option>寝室</option>				
					</select>
				</td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				申报人：</td>
				<td class="ta_01" >
					<input name="loginName" id="loginName" size="21">
				</td>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				审核状态：</td>
				<td class="ta_01" >
					<select id="maintainType" name="maintainType" style="width: 140px">
						<option>------请选择------</option>				
						<option>待审核</option>				
						<option>审核通过</option>				
						<option>未通过</option>				
					</select>
				</td>
				<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
				维护类别：</td>
				<td class="ta_01" >
					<select id="maintainType" name="maintainType" style="width: 140px">
						<option>------请选择------</option>				
						<option>电工</option>				
						<option>水工</option>				
						<option>泥工</option>				
						<option>木工</option>				
					</select>
				</td>
			</tr>
	    </table>	
	</form>
	<!-- 查询输入end -->
	
	<!-- 执行查询begin -->
	<form action="">
		<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
			<tr height=10><td></td></TR>			
			<tr>
			  	<td>
	                <table style="width: 105px; height: 20px" border="0">
						<tr>
							<td align="center" background="${pageContext.request.contextPath }/images/cotNavGround.gif"><img src="${pageContext.request.contextPath }/images/yin.gif" width="15"></TD>
							<td class="DropShadow" background="${pageContext.request.contextPath }/images/cotNavGround.gif">故障信息列表</TD>
						</tr>
		             </table>
	                 </td>
				<td class="ta_01" align="right">
				    <input style="font-size:12px; color:black; height=20;width=80" id="BT_Find" type="button" value="查询" name="BT_Find" >&nbsp;&nbsp;
				    <input style="font-size:12px; color:black; height=20;width=80" id="BT_Reset" type="button" value="清除" name="BT_Reset" >&nbsp;&nbsp;
					<input style="font-size:12px; color:black; height=20;width=80" id="BT_Add" type="button" value="添加申报信息" name="BT_Add" onclick="openWindow('${pageContext.request.contextPath }/page/ReportingMag/reportingBugInfo.jsp')">
				</td>
			</tr>
			<tr>
				<td class="ta_01" align="center" bgColor="#f5fafe" colspan="5">			
					<table cellspacing="0" cellpadding="1" rules="all" bordercolor="gray" border="1" id="DataGrid1"
						style="border-right:gray 1px solid; border-top:gray 1px solid; border-left:gray 1px solid; width:100%; word-break:break-all; border-bottom:gray 1px solid; border-collapse:collapse; background-color:#f5fafe; word-wrap:break-word">
						<!-- 列表标题 begin -->
						<tr style="font-weight:bold;font-size:12pt;height:25px;background-color:#afd1f3">
						    <td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">设备名</td>
							<td align="center" width="10%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">型号</td>
							<td align="center" width="10%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">安装位置</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">申报人</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">申报人联系方式</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">维护人员</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">维护人员的联系方式</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">评价维护人员</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">维护类别</td>
							<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">审核状态</td>
							<td align="center" width="10%"  height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">编辑</td>
							<td align="center" width="10%"  height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">删除</td>
						</tr>
						<!-- 列表标题 end -->
						
						<!-- 列表数据 begin -->
						<% 
							for(int i = 0; i < 10; i++){
						%>
						<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
							<td style="height:22px" align="center" width="20%">
								<input type="hidden" id="123">
								<a href="${pageContext.request.contextPath }/page/UserMag/userInfoView.jsp">XiaoY</a>
							</td>
							<td style="height:22px" align="center" width="10%">
								男
							</td>
							<td style="height:22px" align="center" width="20%">
								管理员
							</td>									
							<td style="height:22px" align="center" width="10%">
								19874736277
							</td>
							<td align="center" style="HEIGHT: 22px" align="center" width="10%">																	
							   <a href="${pageContext.request.contextPath }/page/UserMag/userInfoView.jsp">
							   <img src="${pageContext.request.contextPath }/images/edit.gif" border="0" style="cursor:hand"></a>													
							</td>
							<td align="center" style="HEIGHT: 22px" align="center" width="10%">
								<a href="system/elecUserAction_delete.do?userID=" onclick="return confirm('你确定要删除  XiaoY ？')">
								<img src="${pageContext.request.contextPath }/images/delete.gif" width="16" height="16" border="0" style="cursor:hand"></a>												
							</td>
						</tr>
						<%} %>
						<!-- 列表数据 end -->
					</table>		
				</td>
			</tr>
		</table>
	</form>
	<!-- 执行查询end -->
</body>
</html>