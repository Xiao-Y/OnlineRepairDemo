<%@ page language="java" pageEncoding="UTF-8"%>

<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
	<tr>
		<td>
   			<fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;color:#023726;font-size: 12px;">
 					<legend align="left">权限分配</legend>
   				<table cellspacing="0" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">			 
		  			<tr>
			 			<td class="ta_01" colspan=2 align="left" width="100%" > 
						<br>
				          	技术设施维护管理 : 
	  	                        <input type="checkbox"  name="selectoper" value="a" >
			             	仪器设备管理&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="b" >
			            	 设备校准检修&nbsp;&nbsp;&nbsp;
				            <input type="checkbox"  name="selectoper" value="c" >
			            	 设备购置计划&nbsp;&nbsp;&nbsp;
			            <br>
			         		技术资料图纸管理 : 
			       			<input type="checkbox"  name="selectoper" value="d" >
			             	资料图纸管理 &nbsp;&nbsp;&nbsp;
			      	    <br>
						          站点设备运行管理 : 
						    <input type="checkbox"  name="selectoper" value="e" >
						         站点基本信息&nbsp;&nbsp;&nbsp;
			      	      	<input type="checkbox"  name="selectoper" value="f" >
			            	 运行情况&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="g" >
			            	 维护情况&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
						<br>&nbsp;
			         		监测台建筑管理 : 
	 	                         	<input type="checkbox"  name="selectoper" value="k" >
			             	监测台建筑管理
						<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			          		系统管理 : 
	 	                         	<input type="checkbox"  name="selectoper" value="l" >
			             	角色管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="m" >
			             	待办事宜 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="n" >
			             	数据字典维护 &nbsp;&nbsp;&nbsp;
						<br>&nbsp;&nbsp;&nbsp;
			          		操作权限分配 : 
	 	                         	<input type="checkbox"  name="selectoper" value="o" >
			             	新增功能 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="p" >
			            	删除功能&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	                         	<input type="checkbox"  name="selectoper" value="q" >
			             	编辑功能&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			   			</td>
					</tr>						
 				</table>	
       		</fieldset>
	  	</td>
	</tr>
	
	<tr>
		<td height=10></td>
	</tr>
	
  	<tr>
		<td>
			<fieldset style="width:100%; border : 0px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;">
				<legend align="left">用户分配</legend>
				<table cellspacing="0" align="center" width="100%" cellpadding="1" rules="all" bordercolor="gray" border="1" id="DataGrid1"
										style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
					<tr style="FONT-WEIGHT:bold;FONT-SIZE:12pt;HEIGHT:25px;BACKGROUND-COLOR:#afd1f3">
					   	<td class="ta_01"  align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">全选中</td>
					   	<td class="ta_01"  align="center" width="40%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">登录名</td>
					   	<td class="ta_01"  align="center" width="40%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">用户姓名</td>
					</tr>
					<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
							<input type="checkbox" name="selectuser" value="123456789" checked>
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							zs
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							张三
						</td>
					</tr><tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
							<input type="checkbox" name="selectuser" value="123456789" checked>
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							ls
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							李四
						</td>
					</tr><tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
							<input type="checkbox" name="selectuser" value="123456789" checked>
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							ww
						</td>
						<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
							王五
						</td>
					</tr>
				</table>
		    </fieldset>
		</td>
	 </tr>
	<tr>
		<td class="ta_01" align="center" colspan=3 width="100%"  height=20>
			<input type="button" name="saverole" onclick="saveRole()" style="font-size:12px; color:black; height=20;width=50" value="保存">
		</td>
	</tr>
</table>
