<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
	body{
		background:#F4FEFF;
	}
</style>
<center>
<h2 style="margin:10 auto; font-family:幼圆; ">修改密码</h2>
<s:form cssStyle="width:600px;height:300px;background:#F4FEFF; margin:0 auto;"
	action="user_UpdatePwd.action" method="post" target="_top">
	<s:password cssStyle="width:300px;height:40px;" key="原密码"
		name="password"/>
	<s:password cssStyle="width:300px;height:40px;" key="新密码"
		name="newpassword"/>
	<s:password cssStyle="width:300px;height:40px;" key="确认密码"
		name="repassword" />
	<s:submit cssStyle="width:70px;height:30px;margin-right: 250px;"
		value="修改密码"></s:submit>
</s:form>
</center>