<%--
  Created by IntelliJ IDEA.
  User: Yejunjie
  Date: 2017/5/10
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>云书商城-正品书店，品类齐全，价格优惠！</title>
    <link rel="shortcut icon" href="../img/yunlogo.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
    <link href="../css/homeindex.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../javascript/jquery-1.7.2.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/icloudstyle.css"/>
    <script type="text/javascript" src="../javascript/navspace.js"></script>
</head>
<body>
<header>
    <div class="greyheader">
        <span id="shoppingcart" style="padding: 0 30px 0 2px;">
            <a>购物车</a>
        </span>
        <span>|</span>
        <span id="myorder">
            <a>我的订单</a>
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
        <div align="center"><img id="logopic" src="../img/logo300x100.png"></div>
        <div align="center" id="navdiv">
            <ul id="navigation">
                <li><a href="nindexpage.jsp" target="_self">首页</a></li>
                <li><a href="nliterature.jsp" target="_self">文艺</a></li>
                <li><a style="color: #0099cc;border-bottom: 2px solid #0099cc;padding-bottom: 3px;">励志</a></li>
                <li><a href="neducation.jsp" target="_self">教育</a></li>
                <li><a href="ntechnology.jsp" target="_self">科技</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <div class="main_container">
        <div class="navdiv">
            <span style="color: rgba(51,51,51,0.7)">分类：</span>
            <a><span>小说</span></a>
            <a><span>文学</span></a>
            <a><span>传记</span></a>
            <a><span>青春文学</span></a>
        </div>
        <div class="bookcatalog">
            <a id="catalog_a11">
                <div id="catalog_div11" class="catalog">
                    <div class="imgdiv">
                        <img id="img11" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price11" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname11">聊斋志异</span><br>
                        <span id="author11">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a12">
                <div id="catalog_div12" class="catalog">
                    <div class="imgdiv">
                        <img id="img12" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price12" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname12">聊斋志异</span><br>
                        <span id="author12">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a13">
                <div id="catalog_div13" class="catalog">
                    <div class="imgdiv">
                        <img id="img13" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price13" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname13">聊斋志异</span><br>
                        <span id="author13">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a14">
                <div id="catalog_div14" class="catalog">
                    <div class="imgdiv">
                        <img id="img14" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price14" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname14">聊斋志异</span><br>
                        <span id="author14">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a15">
                <div id="catalog_div15" class="catalog">
                    <div class="imgdiv">
                        <img id="img15" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price15" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname15">聊斋志异</span><br>
                        <span id="author15">蒲松龄</span>
                    </div>
                </div>
            </a>
        </div>
        <div class="bookcatalog">
            <a id="catalog_a21">
                <div id="catalog_div21" class="catalog">
                    <div class="imgdiv">
                        <img id="img21" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price21" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname21">聊斋志异</span><br>
                        <span id="author21">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a22">
                <div id="catalog_div22" class="catalog">
                    <div class="imgdiv">
                        <img id="img22" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price22" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname22">聊斋志异</span><br>
                        <span id="author22">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a23">
                <div id="catalog_div23" class="catalog">
                    <div class="imgdiv">
                        <img id="img23" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price23" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname23">聊斋志异</span><br>
                        <span id="author23">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a24">
                <div id="catalog_div24" class="catalog">
                    <div class="imgdiv">
                        <img id="img24" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price24" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname24">聊斋志异</span><br>
                        <span id="author24">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a25">
                <div id="catalog_div25" class="catalog">
                    <div class="imgdiv">
                        <img id="img25" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price25" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname25">聊斋志异</span><br>
                        <span id="author25">蒲松龄</span>
                    </div>
                </div>
            </a>
        </div>
        <div class="bookcatalog">
            <a id="catalog_a31">
                <div id="catalog_div31" class="catalog">
                    <div class="imgdiv">
                        <img id="img31" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price31" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname31">聊斋志异</span><br>
                        <span id="author31">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a32">
                <div id="catalog_div32" class="catalog">
                    <div class="imgdiv">
                        <img id="img32" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price32" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname32">聊斋志异</span><br>
                        <span id="author32">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a33">
                <div id="catalog_div33" class="catalog">
                    <div class="imgdiv">
                        <img id="img33" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price33" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname33">聊斋志异</span><br>
                        <span id="author33">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a34">
                <div id="catalog_div34" class="catalog">
                    <div class="imgdiv">
                        <img id="img34" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price34" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname34">聊斋志异</span><br>
                        <span id="author34">蒲松龄</span>
                    </div>
                </div>
            </a>
            <a id="catalog_a35">
                <div id="catalog_div35" class="catalog">
                    <div class="imgdiv">
                        <img id="img35" src="../img/sidamingzhu.jpg"/>
                    </div>
                    <div class="introduce">
                        <span id="price35" style="font-size: 20px;color: red">¥264.50</span><br>
                        <span id="bookname35">聊斋志异</span><br>
                        <span id="author35">蒲松龄</span>
                    </div>
                </div>
            </a>
        </div>
    </div>

</main>
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
