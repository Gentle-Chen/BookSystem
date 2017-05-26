<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/public/pager.css'/>" />
   
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/book/desc.css'/>">
  </head>
  
  <body>
  <div class="divBookName">${book.bookName }</div>
  <div>
    <img align="top" src="${pageContext.request.contextPath}/${book.photo}" class="img_image_w"/>
    <div class="divBookDesc">
	    <ul>
	    	<li>商品编号：000000000${book.bookId }</li>
	    	<li>价钱：<span class="price_n">&yen${book.bookPrice}</span></li>
	    </ul>
		<hr class="hr1"/>
		<table>
			<tr>
				<td colspan="3">
					作者：${book.author } 著
				</td>
			</tr>
			<tr>
				<td colspan="3">
					出版社：${book.publishName }
				</td>
			</tr>
			<tr>
				<td colspan="3">出版时间：2013-06-01</td>
			</tr>
			<tr>
				<td>版次：1</td>
				<td>页数：374</td>
				<td>字数：48700</td>
			</tr>
			<tr>
				<td width="180">印刷时间：2013-06-01</td>
				<td>开本：16 开</td>
				<td>纸张：胶版纸</td>
			</tr>
		</table>
		<div class="divForm">
			<form id="form1" action="book_CarAdd.action?bookId=${book.bookId }" method="post">
				<input type="hidden" name="method" value=""/>
				<input type="hidden" name="bid" value=""/>
  				我要买：<input id="cnt" style="width: 40px;text-align: center;" type="text" name="number" value="1"/>件		
  				<input style="font-size:24px; color: blue; float: right;" type="submit" value="加入购物车">
  			</form>
  			
  		</div>	
	</div>
  </div>
  </body>
</html>
