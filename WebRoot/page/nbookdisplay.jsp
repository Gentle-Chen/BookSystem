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
                <li><a href="../page/nindexpage.jsp" target="_self">首页</a></li>
                <li><a href="../page/nliterature.jsp" target="_self">文艺</a></li>
                <li><a href="../page/ninspiration.jsp" target="_self">励志</a></li>
                <li><a href="../page/neducation.jsp" target="_self">教育</a></li>
                <li><a href="../page/ntechnology.jsp" target="_self">科技</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <div class="bookdisplay">
        <img src="../img/sidamingzhu.jpg">
        <div class="bookinfo">
            <span class="h1">四大名著</span><br><br>
            <span>价格:</span><span class="h2">¥264.50</span><br><br>
            <span>作者:</span><<span class="h3">(明) 罗贯中,(明)施耐庵, (明) 罗贯中（清）曹雪芹 著;富强 改编</span><br><br>
            <span>出版社:</span><span class="h3">安徽教育出版社</span><br><br>
            <span>剩余数量:</span><span class="h3">2000</span><span style="padding-left: 5px">本</span>
            <div class="clear"></div>
            <div class="shoppingcart">
                <form name="shoppingcart" action="order_orderAdd.action" method="get">
                    <span style="float: left">购买数量:</span>
                    <input type="text" name="quantity" size="10" style="float: left;"><br><br><br>
                    <span><button class="button1" type="submit">立即购买</button></span>
                    <span><button class="button2" type="submit">加入购物车</button></span>
                </form>
            </div>

        </div>
        <div class="clear"></div>
        <div style="font-size:15px;text-align: center;width: 100px;height: 25px;background-color: #cccccc;border-left: 3px solid #0099cc;margin-left: 5px">
            商品简介
        </div>
        <div style="width: 1040px;height: 1px;line-height: 25px;border-bottom: 2px solid #333333;margin: 0 auto">
        </div>
        <div style="margin: 0 auto;padding: 40px 50px;width: 940px;min-height: 200px;height: auto;text-indent: 2em;letter-spacing: 3px;line-height: 30px;"
             id="profiles">
            <p>[明]罗贯中（约1330年－约1400年）</p>
            <p>名本，字贯中，号湖海散人，元末明初杰出小说家。主要作品有小说《三国演义》《三遂平妖传》，其中《三国演义》为其代表作，对后世文学创作影响深远。</p>
            <p>[明]施耐庵</p>
            <p>
                施耐庵（1296—1370），原名施彦端，字肇端，号子安，元末明初文学家。他才华横溢，博古通今，群经诸子、词章诗歌、天文、地理、医卜、星象无不精通。他三十五岁中进士，授任钱塘县事，后弃官归里，专心著述，根据民间流传的宋江起义故事，写成长篇小说《水浒传》。</p>
            <p>[清]曹雪芹</p>
            <p>
                中国文学史上伟大的文学家。名霑，字梦阮，号雪芹，又号芹圃、芹溪。曾祖起三代都在宫廷内务府供职，后其父被免职，产业被抄，他谁家迁居北京，晚年贫病，卒于北京西郊。曹雪芹性格高傲，能诗善画，嗜酒健谈。他呕心沥血十年，写出不朽巨著《红楼梦》，成为中国古典小说的高峰。</p>
            <p>[明]吴承恩</p>
        </div>
    </div>
</main>
<div class="clear"></div>
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
