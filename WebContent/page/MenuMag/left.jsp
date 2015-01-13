<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>

<style type="text/css">
	body {
		MARGIN: 0px; BACKGROUND-COLOR: #8ba7e3
	}
	body {
		COLOR: #000000
	}
	td {
		COLOR: #000000
	}
	th {
		COLOR: #000000
	} 
	
	a{
		text-decoration: none;
		color: #0A0A0A;
	}
</style>

<script type="text/javascript">
	$().ready(function() {
		$(".qx_list").hide();
		$(".qx").click(function() {
			$(this).next().toggle();
		});
	});
	
	function linkcolorchange(objLink)
	{
		for(var i=0;i<document.links.length;i++)
		{
			document.links[i].style.color = "" ;
		}
			objLink.style.color = "red" ;
	}
	
	function backgroundColorChange(objLink,strColor)
	{
		objLink.style.backgroundColor = strColor ;
	}
</script>
</head>

<body scroll="no" MS_POSITIONING="GridLayout" scroll="auto" class="bodyscroll">
	<table height="100%" cellSpacing="0" cellPadding="0" width="143" border="0">
		<tr>
			<td vAlign="top" bgColor="#F6F6F6" height="100%">
			<%
				for(int i = 0; i < 8; i++){
			%>
				<div class="qx">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr height=25>
							<td align="left" background="${pageContext.request.contextPath }/images/b-info.gif"  vAlign="middle">
								<div class="qx">
									&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB0" width="8" height="9" alt="" border="0" />
									权限管理1
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="qx_list" id="KB0Child">
					<table cellSpacing="0" cellPadding="0" width="99%" border="0">
						<tr>
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/test1.html' target="main">权限管理11</a>
							</td>
						</tr>
						<tr>
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/test2.html' target="main">权限管理12</a>
							</td>
						</tr>
					</table>
				</div>
			<%} %>
			</td>
		</tr>
	</table>
</body>
</html>