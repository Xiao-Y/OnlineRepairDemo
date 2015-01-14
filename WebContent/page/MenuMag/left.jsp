<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

<!-- 切换折叠 -->
<script type="text/javascript">
	$().ready(function() {
		var open = "${pageContext.request.contextPath }/images/open.gif";
		var add = "${pageContext.request.contextPath }/images/add.gif";
		$(".qx_list").hide();
		$(".qx").click(function() {
			var id = $(this).attr("id");
			$(this).next().toggle(0,
				function(){
					var src = $("img[name="+ id +"]").attr("src");
					if(src == open){
						src = add;
					}else{
						src = open;
					}
					$("img[name="+ id +"]").attr("src", src);
				}		
			);
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

<body>
	<table height="100%" width="140" border="0" cellSpacing="0" cellPadding="0">
		<tr height="6"><td></td></tr>
		<tr>
			<td vAlign="top" bgColor="#F6F6F6" height="100%">
				<!-- 设备管理 begin -->
				<div class="qx" id="deviceMagParent">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr height=25>
							<td align="left" background="${pageContext.request.contextPath }/images/b-info.gif"  vAlign="middle">
								<div class="img">
									&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="deviceMagParent" width="8" height="9" alt="" border="0" />
									设备管理
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="qx_list" id="deviceMagChild">
					<table cellSpacing="0" cellPadding="0" width="99%" border="0">
						<tr height="25">
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/DeviceMag/deviceInfoList.jsp' target="main">设备信息管理</a>
							</td>
						</tr>
						<tr height="25">
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/DeviceMag/deviceStateList.jsp' target="main">查询设备状态</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- 设备管理 end -->
				
				<!-- 用户管理 begin -->
				<div class="qx" id="userMagParent">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr height=25>
							<td align="left" background="${pageContext.request.contextPath }/images/b-info.gif"  vAlign="middle">
								<div class="img">
									&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="userMagParent" width="8" height="9" alt="" border="0" />
									用户信息管理
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="qx_list" id="userMagChild">
					<table cellSpacing="0" cellPadding="0" width="99%" border="0">
						<tr height="25">
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/UserMag/deviceInfoList.jsp' target="main">个人信息</a>
							</td>
						</tr>
						<tr height="25">
							<td class="box05" onmouseover="backgroundColorChange(this,'#AAAAAA');" onmouseout="backgroundColorChange(this,'');">
								&nbsp;&nbsp;&nbsp;&nbsp;<a class="cl_01" onclick="linkcolorchange(this)" href='${pageContext.request.contextPath }/page/UserMag/userInfoList.jsp' target="main">用户信息</a>
							</td>
						</tr>
					</table>
				</div>
				<!-- 用户管理 end -->
			</td>
		</tr>
	</table>
</body>
</html>