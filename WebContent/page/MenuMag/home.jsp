<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">  
	function iFrameHeight() {  
		var ifm= document.getElementById("iframepage");  
		var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;  
		if(ifm != null && subWeb != null) {
		   ifm.height = subWeb.body.scrollHeight;
		   ifm.width = subWeb.body.scrollWidth;
		}  
	}  
</script>

<title>设备故障申报系统</title>
</head>
	<!--  
	  		frameborder:区域边框的宽度，为了让“画中画“与邻近的内容相融合，常设置为0。
	  		scrolling：当SRC的指定的HTML文件在指定的区域显示不完时，
	  		滚动选项，如果设置为NO，则不出现滚动条；
	  		如为Yes，则显示；
	  		如为Auto：则自动出  现滚动条；
	  	-->
			<%-- <iframe width="100%" height="8%" src="${pageContext.request.contextPath }/page/MenuMag/top.jsp" scrolling="no"></iframe>

			<iframe width="20%" height="80%" src="${pageContext.request.contextPath }/page/MenuMag/left.jsp" scrolling="auto"></iframe>

			<iframe id="iframepage" name="main" onLoad="iFrameHeight()" ></iframe>

			<iframe width="100%" height="8%" src="${pageContext.request.contextPath }/page/MenuMag/buttom.jsp" scrolling="no"></iframe>
 --%>
<frameset border=0 frameSpacing="0" rows="85,*"frameBorder="1" id="mainparent">
	<frame name=topFrame src="${pageContext.request.contextPath }/page/MenuMag/top.jsp" noResize scrolling=no>
	<frameset name="main" border=0 frameSpacing=0 frameBorder=1 cols=143,*>
		<frame name="leftFrame" src="${pageContext.request.contextPath }/page/MenuMag/left.jsp" noResize>
		<frame name="main">
	</frameset>
	<%-- 
	<frame name=topFrame src="${pageContext.request.contextPath }/page/MenuMag/buttom.jsp" noResize scrolling=no>
	 --%>
</frameset>
		
</html>