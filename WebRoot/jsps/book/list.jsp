<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/book/list.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/pager1/pager.css'/>" />
  </head>
  
  <body>

<ul>
<c:forEach items="${bookBean.list }" var="book">
	<li>
	  <div class="inner">
	    <a href="book_BookItem.action?bookId=${book.bookId}" class="pic" href="<c:url value='/jsps/book/desc.jsp'/>"><img src="${pageContext.request.contextPath}/${book.photo}" border="0"/></a>
	    <p class="price">
	    	<span class="price_n">价格：&yen${book.bookPrice }</span>
		</p>
		<p><a href="book_BookItem.action?bookId=${book.bookId}" id="bookname" title="${book.bookName }" href="<c:url value='/jsps/book/desc.jsp'/>">书名：${book.bookName }</a></p>
		<p><a href="book_BookItem.action?bookId=${book.bookId}" id="booknumber" title="${book.number }" href="<c:url value='/jsps/book/desc.jsp'/>">剩下数量：${book.number }本</a></p>
		<p class="publishing">
			<span>出 版 社：</span><a href="book_BookItem.action?bookId=${book.bookId}" href="<c:url value='/jsps/book/desc.jsp'/>">${book.publishName }</a>
		</p>
		<p class="publishing_time"><span>作者：</span>${book.author }</p>
	  </div>
  </li>	
</c:forEach>


</ul>

<div style="float:left; width: 100%; text-align: center;font-size: 16px; ">
	<hr/>
	<br/>
	<%@include file="/jsps/public/pager.jsp" %>
</div>

  </body>
 
</html>

