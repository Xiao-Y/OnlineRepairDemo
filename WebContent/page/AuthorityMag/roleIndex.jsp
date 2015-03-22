<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJquery.js"></script>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/pub.css" />

		<title>角色权限管理</title>
				
		<script language="javascript">
		  
		 function saveRole(){
			var roleid = $("#role").val(); 		 
           $("#roleid").val(roleid);
           alert(roleid);
		   //document.Form2.action="saveRole.do";
		   //document.Form2.submit();
		}
		
       
       function selectRole(){
          
          if($("#role").val()=="0"){
        	  window.location.href="${pageContext.request.contextPath }/page/AuthorityMag/roleIndex.jsp";            
          }else{
            $().ready(function(){
            	$("#form2").text("");
            	$("#form2").load("${pageContext.request.contextPath }/page/AuthorityMag/roleEdit.jsp");
            });
          }
       }
		
		</script>
	</HEAD>
		
	<body>
		<form name="form1" id="form1"  method="post" style="margin:0px;">
			<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
				<tbody>
					<tr>
						<td class="ta_01" colspan=2 align="center" background="${pageContext.request.contextPath }/images/b-info.gif">
							<font face="宋体" size="2"><strong>角色管理</strong></font>
						</td>
					</tr>	
					<tr>
					   <td class="ta_01" colspan=2 align="right" width="100%"  height=10>
					   </td>
					</tr>		
					<tr>
						<td class="ta_01" align="right" width="35%" >角色类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="ta_01" align="left"  width="65%" >
							<select name="role" id="role" class="bg role" style="width:180px"  onchange="selectRole()">
								 <option value="0">请选择</option>
								 <option value="1">系统管理员</option>
								 <option value="2">高级管理员</option>
								 <option value="3">中级管理员</option>
								 <option value="4">业务用户</option>
								 <option value="5">一般用户</option>
								 <option value="6">普通用户</option>
							 </select>  
						 </td>				
					</tr>
				    
				    <tr>
					   <td class="ta_01" align="right" colspan=2 align="right" width="100%"  height=10></td>
					</tr>
				</tbody>
			</table>
		</form>

		<form  name="form2" id="form2"  method="post" style="margin:0px;">
			<table cellspacing="1" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
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
			</table>
			<input type="hidden" value="" id="roleid" name="roleid">
		</form>
	</body>
</html>
