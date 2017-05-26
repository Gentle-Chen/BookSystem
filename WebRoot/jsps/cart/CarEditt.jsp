<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.zhbit.book.Domain.Book" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>cartlist.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="<c:url value='/jsps/css/cart/list.css'/>">
</head>
<body>
<form action="book_CarUpdate.action">
	<input type="hidden" name="bookId" value="${book.bookId }">
	<table width="95%" align="center" cellpadding="0" cellspacing="0">
		<tr align="center" bgcolor="#efeae5">
			<td align="left" width="50px"><input type="checkbox"
				id="selectAll" checked="checked" /><label for="selectAll">全选</label>
			</td>
			<td colspan="2">商品名称</td>
			<td>单价</td>
			<td>数量</td>
		</tr>

		
			<tr align="center">
				<td align="left"><input value="12345" type="checkbox"
					name="checkboxBtn" checked="checked" /></td>
				<td align="left" width="70px"><a class="linkImage"
					href="<c:url value='/jsps/book/desc.jsp'/>"><img border="0" width="54" align="top" src="${pageContext.request.contextPath}/${book.photo}"/>
				</a></td>
				<td align="left" width="400px"><a
					href="<c:url value='/jsps/book/desc.jsp'/>"><span>${book.bookName }</span>
				</a></td>
				<td><span>&yen;<span class="currPrice"
						id="12345CurrPrice">${book.bookPrice }</span>
				</span>
				</td>
				<td><a class="jian" id="12345Jian"></a><input class="quantity"
					id="12345Quantity" name="number" type="text" value="${book.number }" /><a
					class="jia" id="12345Jia"></a></td>
			</tr>
		<tr>
			<td>
				<span style="position: relative; left: 850px; font-size: 18px;"><input type="submit" value="保存"></span>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
