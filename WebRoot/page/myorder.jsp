<%--
  Created by IntelliJ IDEA.
  User: Yejunjie
  Date: 2017/5/10
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <head>
    <% 
	    String path = request.getContextPath();  
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
        <title>云书商城-正品书店，品类齐全，价格优惠！</title>
        <link rel="shortcut icon" href="<%=basePath%>/img/yunlogo.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="<%=basePath%>/bootstrap/css/bootstrap.min.css"/>
        <link href="<%=basePath%>/css/homeindex.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="<%=basePath%>/javascript/jquery-1.7.2.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/icloudstyle.css"/>
        <script type="text/javascript" src="<%=basePath%>/javascript/navspace.js"></script>
        <%--<script src="../javascript/angular.js"></script>--%>
        <%--<script src="../javascript/car-controller.js"></script>--%>

    </head>
<body>
<header>
    <div class="greyheader">
        <span id="shoppingcart" style="padding: 0 30px 0 2px;">
            <a href="shoppingcart.jsp">购物车</a>
        </span>
        <span>|</span>
        <span id="myorder">
            <a href="myorder.jsp">我的订单</a>
        </span>
        <span>|</span>
        <span id="modify">
            <a href="modifypwd.jsp" target="_self">修改密码</a>
        </span>
        <span>|</span>
        <span id="nowusername">
            <a>当前用户名</a>
        </span>
    </div>
    <nav>
        <div align="center"><img id="logopic" src="<%=basePath%>/img/logo300x100.png"></div>
        <div align="center" id="navdiv">
            <ul id="navigation">
                <li><a href="nindexpage.jsp" target="_self">首页</a></li>
                <li><a href="nliterature.jsp" target="_self">文艺</a></li>
                <li><a href="ninspiration.jsp" target="_self">励志</a></li>
                <li><a href="neducation.jsp" target="_self">教育</a></li>
                <li><a href="ntechnology.jsp" target="_self">科技</a></li>
            </ul>
        </div>
    </nav>
</header>
<div class="container" style="height:auto;min-height: 600px">


    <div class="row">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-9" id="workspace" role="main">

            <div class="row hidden-print">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="nindexpage.jsp">首页</a></li>
                        <li class="active">我的订单</li>
                    </ol>
                </div>
            </div>

            <!-- 订单明细开始 -->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="width: 100%;min-width: 1050px;margin: 0 auto;">
               <c:forEach items="${requestScope.list}" var="order" step="1">
                <span style="margin-top: 20px">订单号：<a href="order_item.action?orderId=${order.orderId }">${order.orderNumber }</span>
                <span style="float: right">
                	<c:choose>
					<c:when test="${order.isDeal eq 0}">等待发货</c:when>
					<c:when test="${order.isDeal eq 1}">等待确认</c:when>
					<c:when test="${order.isDeal eq 2}">交易成功</c:when>
					<c:when test="${order.isDeal eq 3}">已取消</c:when>
				</c:choose>	
                </span>
                <table class="table table-condensed table-hover text-center"
                       style="margin: 0 auto;margin-top:5px;margin-bottom:20px;">
                    <thead>
                    <tr>
                        <th style="width: 50px;text-align: center">序号</th>
                        <th style="width: 200px;text-align: center">产品型号</th>
                        <th style="width: 150px;text-align: center">销售单价</th>
                        <th style="width: 150px;text-align: center">采购数量</th>
                        <th style="width: 150px;text-align: center">金额小计</th>
                        <th style="width: 150px;text-align: center">订单用户</th>
                        <th style="width: 150px;text-align: center">处理订单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${oder.orderId}</td>
                        <td>ZB15KQ-PFJ-558</td>
                        <td></td>
                        <td>3</td>
                        <td>${order.total }</td>
                        <td>${order.user.getName() }</td>
                        <c:if test="${order.isDeal eq 0}">
							<td><a href="order_dealOrder.action">发货</a></td>
						</c:if>
						<c:if test="${order.isDeal eq 1}">
							<td bgcolor="gray">完成发货</td>
						</c:if>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="7" class="text-right">
                            <p class="form-control-static">
                                产品合计：<span class="large-bold-red">￥364 元</span>
                            </p>
                        </td>
                    </tr>
                    </tfoot>
                    </c:forEach>
                </table>
            </div>
            <!-- 订单明细结束 -->

            <!-- 订单明细开始 -->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="width: 100%;min-width: 1050px;margin: 0 auto;">
                <span style="margin-top: 20px">订单号：201705150231</span>
                <span style="float: right">订单发货状态: 未发货</span>
                <table class="table table-condensed table-hover text-center"
                       style="margin: 0 auto;margin-top:5px;margin-bottom:20px;">
                    <thead>
                    <tr>
                        <th style="width: 50px;text-align: center">序号</th>
                        <th style="width: 200px;text-align: center">产品型号</th>
                        <th style="width: 150px;text-align: center">销售单价</th>
                        <th style="width: 150px;text-align: center">采购数量</th>
                        <th style="width: 150px;text-align: center">金额小计</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>ZB18JQ-DQJ-328</td>
                        <td>56.30元</td>
                        <td>3</td>
                        <td>150.70元</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="7" class="text-right">
                            <p class="form-control-static">
                                产品合计：<span class="large-bold-red">￥150.70 元</span>
                            </p>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
            <!-- 订单明细结束 -->


        </div>
    </div>
</div>
<footer>
    <div align="center" style="margin-top: 20px"><img src="../img/button1024x65.png"></div>
    <div class="footcss" align="center">
        <div class="about">
            <span><a>关于我们</a></span>
            <span>|</span>
            <span><a>联系我们</a></span>
            <span>|</span>
            <span><a>诚聘英才</a></span>
            <span>|</span>
            <span><a>商务合作</a></span>
            <div class="aboutclear"></div>
            <span>云书商城公司版权所有<span style="font-size: 8px;font-family: 'Microsoft YaHei'">&copy;</span>2016-2017</span>
        </div>
    </div>
</footer>
</body>
</html>
