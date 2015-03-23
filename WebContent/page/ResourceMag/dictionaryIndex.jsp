<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

<script type="text/javascript">
function insertRows() {
	var tempRow = 0;
	//var tbl = document.getElementById("dictTbl");
	//tempRow = tbl.rows.length;//计算出现当前是多少行
	tempRow = $("#dictTbl tr").length;//计算出现当前是多少行
	
	//var newRow = tbl.insertRow(tbl.rows.length);//插入新的一行 
	var newRow = $("#dictTbl").insertRow(tempRow);
	var Cells = newRow.cells;//类似数组的Cells 
	
	var Rows = tbl.rows;//类似数组的Rows 
	
	for (i = 0; i < 3; i++)//每行的3列数据 
	{
		var newCell = Rows(newRow.rowIndex).insertCell(Cells.length);
		newCell.align = "center";
		switch (i) {
		case 0:
			newCell.innerHTML = "<td class=\"ta_01\" align=\"center\"  width=\"15%\">"
					+ tempRow + "</td>";
			break;
		case 1:
			newCell.innerHTML = "<td class=\"ta_01\" align=\"center\"  width=\"60%\"><input name=\"itemname\" type=\"text\" id=\""+tempRow+"\" size=\"45\" maxlength=25></td>";
			break;
		case 2:
			newCell.innerHTML = "<td class=\"ta_01\" align=\"center\"  width=\"25%\"><a href='javascript:delTableRow(\""
					+ tempRow
					+ "\")'><img src=${pageContext.request.contextPath }/images/delete.gif width=15 height=14 border=0 style=CURSOR:hand></a></td>";
			break;
		}
	}
}

function delTableRow(rowNum) {
	var tbl = document.getElementById("dictTbl");
	if (tbl.rows.length > rowNum) {
		tbl.deleteRow(rowNum);
		for (i = rowNum; i < tbl.rows.length; i++) {
			tbl.rows[i].cells[0].innerText = i;
			tbl.rows[i].cells[2].innerHTML = "<a href='javascript:delTableRow(\""
					+ i
					+ "\")'><img src=${pageContext.request.contextPath }/images/delete.gif width=15 height=14 border=0 style=CURSOR:hand></a>";
		}
	}
}
</script>

<title>数据字典维护</title>
</head>
<body>
	<form name="Form1" id="Form1" method="post">
		<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
			<tbody>
				<tr>
					<td class="ta_01" colspan=3 align="center"background="${pageContext.request.contextPath }/images/b-info.gif">
						<font face="宋体" size="2"><strong>数据字典维护</strong></font>
					</td>
				</tr>
				<tr height=10>
					<td colspan=3></td>
				</tr>
				<tr>
					<td class="ta_01" align="right" width="35%">类型列表：</td>
					<td class="ta_01" align="left" width="30%" height="20">
					<select style="height: 20px;width: 158px;">
						<option value="0" selected="selected">添加新类型名称</option>
						<option value="1">性别</option>
						<option value="2">角色</option>
						<option value="3">维护类型</option>
						<option value="4">运行状态</option>
					</select>
					<!-- 
					<select list="%{#request.systemList}" name="keyword" cssClass="bg" cssStyle="width: 180px" onchange="changetype()"
								listKey="%{keyword}" listValue="%{keyword}"
								headerKey="jerrynew" headerValue="添加新类型名称"
						>
					</select>
					 -->
					</td>
					<td class="ta_01" align="right" width="35%"></td>
				</tr>
				<tr>
					<td class="ta_01" align="right" width="35%" id="newtypename">类型名称：</td>
					<td class="ta_01" align="left" width="30%" height=20 id="newddlText">
						<input type="text" name="keywordname" maxlength="25" size="24">
					</td>
					<td class="ta_01" align="right" width="35%"></td>
				</tr>

				<tr height=10>
					<td colspan=3 align="right"><input type="button" name="saveitem" value="添加选项" style="font-size: 12px; color: black;" onClick="insertRows()"></td>
				</tr>
			</tbody>
		</table>
	</form>

	<form name="Form2" id="Form2" method="post" style="margin: 0px;">
		<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
			<tr>
				<td>
					<table cellspacing="0" cellpadding="1" rules="all" bordercolor="gray" border="1" id="dictTbl" style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
						<tr style="font-weight: bold; font-size: 12pt; height: 25px; background-color: #afd1f3">
							<td class="ta_01" align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">编号</td>
							<td class="ta_01" align="center" width="60%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">名称</td>
							<td class="ta_01" align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">删除</td>
						</tr>
						<tr>
							<td class="ta_01" align="center" width="20%">1</td>
							<td class="ta_01" align="center" width="60%">
								<input type="text" name="itemname" size="45" maxlength="25">
							</td>
							<td class="ta_01" align="center" width="20%"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr height=10>
				<td colspan=3></td>
			</tr>
			<tr>
				<td align="center" colspan=3><input type="button" name="saveitem" value="保存" style="font-size: 12px; color: black;" onClick="return saveDict();"></td>
			</tr>
			<!-- 
			<s:hidden name="keywordname"/>
			<s:hidden name="typeflag"/>
			 -->
		</table>
	</form>
</body>
</html>