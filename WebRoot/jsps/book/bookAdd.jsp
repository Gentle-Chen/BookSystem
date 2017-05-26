<%@page import="com.zhbit.book.Action.userAction"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.zhbit.book.Domain.User" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>图书添加页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/regist.css">
</head>
<body>
<form action="book_addBook.action" method="post" enctype="multipart/form-data">
	<table>
			<tr>
				<td colspan="3">
					书名：　　<input type="text" id="bookName" name="bookName"  style="width:150px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					图片：　　<input type="file" id="upload" name="upload" style="width:150px;"/>
				</td>
			</tr> 
			<tr>
				<td colspan="3">
					作者：　　<input type="text" id="author" name="author" style="width:150px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					价钱：　　<input type="text" id="bookPrice" name="bookPrice" style="width:150px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					出版社：　<input type="text" name="publishName" id="publishName" style="width:200px;"/>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					图书数量：　<input type="text" name="number" id="number" style="width:200px;"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" id="btn" class="btn" value="新书上架">
				</td>
				<td></td>
				<td></td>
			</tr>
		</table>
</form>
	
</body>
</html>
