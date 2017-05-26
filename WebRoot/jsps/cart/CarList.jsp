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
<c:if test="${sessionScope.shoppingBook==null }">
	
		<table width="95%" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td align="right"><img align="top"
							src="<c:url value='/jsps/pic/icon_empty.png'/>" /></td>
						<td><span class="spanEmpty">您的购物车中暂时没有商品</span></td>
					</tr>
		</table>
	
</c:if>
<c:if test="${sessionScope.shoppingBook!=null }">
	<br><br>

	<table width="95%" align="center" cellpadding="0" cellspacing="0">
		<tr align="center" bgcolor="#efeae5">
			<td align="left" width="50px"><input type="checkbox"
				id="selectAll" checked="checked" /><label for="selectAll">全选</label>
			</td>
			<td colspan="2">商品名称</td>
			<td>单价</td>
			<td>数量</td>
			<td>小计</td>
			<td colspan="2">操作</td>
		</tr>

		<c:forEach items="${sessionScope.shoppingBook }" var="st">
			<tr align="center">
				<td align="left"><input value="12345" type="checkbox"
					name="checkboxBtn" checked="checked" /></td>
				<td align="left" width="70px"><a class="linkImage"
					href="<c:url value='/jsps/book/desc.jsp'/>"><img border="0" width="54" align="top" src="${pageContext.request.contextPath}/${st.photo}"/>
				</a></td>
				<td align="left" width="400px"><a
					href="<c:url value='/jsps/book/desc.jsp'/>"><span>${st.bookName }</span>
				</a></td>
				<td><span>&yen;<span class="currPrice"
						id="12345CurrPrice">${st.bookPrice }</span>
				</span>
				</td>
				<td><a class="jian" id="12345Jian"></a><input class="quantity"
					readonly="readonly" id="12345Quantity" type="text" value="${st.number }" /><a
					class="jia" id="12345Jia"></a></td>
				<td width="100px"><span class="price_n">&yen;<span
						class="subTotal" id="12345Subtotal">${st.number*st.bookPrice }</span>
				</span></td>
				<td><a href="book_CarEdit.action?bookId=${st.bookId } && number=${st.number}">修改</a></td>
				<td><a href="book_CarDelete.action?bookId=${st.bookId }">删除</a></td>
			</tr>
		</c:forEach>


		<tr>
			<td colspan="4" class="tdBatchDelete"><!-- <a
				href="javascript:alert('批量删除成功');">批量删除</a> --></td>
			<td colspan="3" align="right" class="tdTotal"><span>总计：</span><span
				class="price_t">&yen ${sessionScope.totalMoney }<span id="total"></span>
			</span></td>
		</tr>
		<tr>
			<td colspan="7" align="right"><a
				href="<c:url value='/jsps/cart/showitem.jsp'/>" id="jiesuan"
				class="jiesuan"></a></td>
		</tr>
	</table>
	<form id="form1" action="<c:url value='/jsps/cart/showitem.jsp'/>"
		method="post">
		<a href="book_bookListPage.action" style="position: relative; left: 750px; bottom: 50px" ><span>继续购物</span></a>
		<input style="font-size: 20spx; position: relative; left: 750px; bottom: 50px;" type="submit" value="生成订单">
	</form>
</c:if>

</body>
</html>
