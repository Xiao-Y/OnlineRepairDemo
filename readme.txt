此文件主要用于在线申报系统的原型设计

访问路径：
http://localhost:8090/OnlineRepairDemo/index.jsp

js文件：
My97DatePicker	日历
uploadPreview	上传图片预览
myJquery.js		自己的js操作

css文件：
pub.css		公有的样式

一、MenuMag		菜单管理
	home.jsp	主页面
	left.jsp	左边菜单
	top.jsp		头文件

二、DeviceMag	设备管理
	1、主要管理的是设备
	deviceInfoList.jsp		设备信息管理
	deviceInfoAdd.jsp		添加设备信息
	deviceInfoAdd.jsp		编辑设备信息
	deviceInfoView.jsp		查看设备详细信息
	
	2、主要管理设备的运行状态
	deviceStateList.jsp		查看设备状态
	deviceStateAdd.jsp		添加设备状态信息
	deviceStateEdit.jsp		编辑设备状态信息
	deviceStateView.jsp		查看设备详细状态信息
	
三、UserMag		用户信息管理
	userInfoList.jsp		用户信息列表
	userInfoAdd.jsp			添加用户信息
	userInfoEdit.jsp		编辑用户信息
	userInfoView.jsp		查看用户的详细信息
	
四、ReportingMag	申报管理
	reportingBugInfo.jsp 				申报故障信息
	reportingBugInfoList.jsp			所有故障信息列表
	reportingBugInfoEdit.jsp.jsp		编辑故障信息
	reportingBugInfoView.jsp.jsp		查看故障信息

五、AuditMag		审核管理
	1.通过审核的
	auditInfoPassEdit.jsp			编辑通过审核故障信息
	auditInfoPassList.jsp			通过审核故障信息列表
	auditInfoPassView.jsp			查看通过审核故障信息
	
	2.未通过审核的
	auditInfoRefuseEdit.jsp			编辑未通过审核故障信息
	auditInfoRefuseList.jsp			未通过审核故障信息列表
	auditInfoRefuseView.jsp			查看未通过审核故障信息
	
	
	3.待审核的
	auditInfoWaitEdit.jsp			编辑待审核故障信息
	auditInfoWaitList.jsp			待审核故障信息列表
	auditInfoWaitView.jsp			查看待审核故障信息
	
六、EvaluateMag	评价管理
	evaluateInfoList.jsp			评价列表
	evaluateInfoEdit.jsp			去评价

六、AuthorityMag 权限管理
	roleIndex.jsp					权限列表
	roleEdit.jsp					编辑用户权限
	
七、CountMag		统计管理
	deviceBreakdownCount.jsp		设备种类出现故障报表统计
	userEvaluateCount.jsp			用户各种评价报表统计
	userSexCount.jsp				用户性别报表统计
	userTypeCount.jsp				用户类型报表统计
	
八、ResourceMag  资源管理

