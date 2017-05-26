<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>showitem.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/cart/showitem.css'/>">
	
<style type="text/css">
#addr{width: 500px; height: 32px;border: 1px solid #7f9db9; padding-left: 10px; line-height: 32px;}
</style>

  </head>
  
  <body>
<form id="form1" action="order_orderAdd.action" method="post">
	<!-- <input type="hidden" name="cartItemIds" value=""/>
	<input type="hidden" name="method" value=""/> -->
<table width="95%" align="center" cellpadding="0" cellspacing="0">
	<tr bgcolor="#efeae5">
		<td width="400px" colspan="5"><span style="font-weight: 900;">生成订单</span></td>
	</tr>
	<tr align="center">
		<td width="10%">&nbsp;</td>
		<td width="50%">图书名称</td>
		<td>单价</td>
		<td>数量</td>
		<td>小计</td>
	</tr>


<c:forEach items="${sessionScope.shoppingBook }" var="book">
	<tr align="center">
		<td align="right">
			<a class="linkImage" href=""><img border="0" width="54" align="top" src="${pageContext.request.contextPath}/${book.photo}"/></a>
		</td>
		<td align="left">
			<a href="#"><span>${book.bookName }</span></a>
		</td>
		<td>&yen${book.bookPrice }</td>
		<td>${book.number }</td>
		<td>
			<span class="price_n">&yen;<span class="subtotal">${book.number*book.bookPrice }</span></span>
		</td>
	</tr>
</c:forEach>
	

	<tr>
		<td colspan="6" align="right">
			<span>总计：</span><span class="price_t">&yen${sessionScope.totalMoney }<span id="total"></span></span>
		</td>
	</tr>
	<tr>
		<td colspan="5" bgcolor="#efeae5"><span style="font-weight: 900">收货地址</span></td>
	</tr>
	<tr>
		<td colspan="6">
			<input id="addr" type="text" name="address"  placeholder="珠海市 香洲区 唐家湾 6号 北京理工大学珠海学院 黄永露" />
		</td>
	</tr>
	<tr>
		<td style="border-top-width: 4px;" colspan="5" align="right">
			<input type="submit" value="结算">
			<!-- <a id="linkSubmit" href="javascript:$('#form1').submit();">提交订单</a> -->
		</td>
	</tr>
</table>
</form>
  </body>
</html>
