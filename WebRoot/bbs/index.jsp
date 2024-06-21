<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>交流论坛</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta content="ie=7.0000" http-equiv="x-ua-compatible">
	<meta name=generator content="mshtml 11.00.9600.16428">
	<meta name=mssmarttagspreventparsing content=true>
	<meta content=yes http-equiv=msthemecompatible>
	<meta content=ie=7 http-equiv=x-ua-compatible>
	
	 <link rel=stylesheet type=text/css href="<%=path %>/css/style_5.css ">
	<link rel=stylesheet type=text/css href="<%=path %>/css/style_5_append.css"> 
<!-- 下面进行添加之前写过的html页面的背景	 -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/lightbox.css" />
    <link rel="stylesheet" type="text/css" href="font_svcu02nytc/iconfont.css"/>
		<link rel="stylesheet" type="text/css" href="css/photoshi.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/form.css"/>
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="script/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="script/js.js"></script>
    
	<script type=text/javascript src="<%=path %>/js/common.js"></script>
	<script type=text/javascript src="<%=path %>/js/menu.js"></script>
	<script type=text/javascript src="<%=path %>/js/ajax.js"></script>
  </head>
  
  <body>
	<!-- 新加开始	 -->
<!-- banner -->
    <div class="banner a-banner">
      <!-- container -->
      <div class="container">
        <div class="header">
          <div class="logo">
            <a href="index1.html">玩转西安</a>
          </div>
          <div class="icons">
            <ul>
              <li><a href="#" class="facebook"> </a></li>
              <li><a href="#" class="facebook twitter"> </a></li>
              <li><a href="#" class="facebook chrome"> </a></li>
              <li><a href="#" class="facebook dribbble"> </a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="top-nav">
          <span class="menu">菜单</span>
          <ul class="nav1">
						<li><a href="index1.html">简介</a></li>
						<li><a href="rank.html">榜单</a></li>
						<li><a href="silk.html">锦囊</a></li>
						<!--<li><a href="question.html">问答</a></li> -->
	<!-- 这里为之前的不太确定这种实现方式是否正确 	<li><a href="#news" class="scroll">公告</a></li> -->
						<!--<li><a href="contact.html">游记</a></li>-->
						<li><a href="travels.html">游记</a></li>
						<li><a href="baidumap.html">探索</a></li>
<!-- 						<li><a href="hotel.html">酒店</a></li> -->
						<li><a href="index.action" class="active">论坛</a></li>
					</ul>
          <!-- script-for-menu -->
          <script>
            $("span.menu").click(function () {
              $("ul.nav1").slideToggle(300, function () {
                // Animation complete.
              });
            });
          </script>
          <!-- /script-for-menu -->
        </div>
      </div>
      </div>
      <div class="banner-top-slide">
		<div class="banner-bottom-top">
			<h4>畅所欲言</h4>
			<p>集思广益，广开言路，在这里你可以开动你的脑筋，解决大家的问题。</p>
		</div>
		<div class="banner-bottom-bottom">
			<div class="banner-top-slide-grids">
				<script src="js/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					</script>
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="banner-slid">
									<h3>四海一家</h3>
									<p>在这里分享你的旅游经验；</br>
									   在这里分享你的旅游心情；</br>在这里结识到更多新朋友；
									</p>
								</div>
							</li>
							
						</ul>
					</div>
			</div>
		</div>
	</div>
<!-- 新加结束 -->
<div class="about-top">
<div class="container">
<div class="about-info">
				<h3>看看大家都说了些什么吧!</h3>
				<!--<p>子州民宿沿西栅市河蜿蜒而布，由乌镇具有百年历史的民居改建而成。</p>-->
			</div>
<jsp:include page="incTop.jsp"/>
	<div id=foruminfo>


	<c:if test="${empty sessionScope.user}">
	<div id=userinfo>
	<div id=nav><a href="<%=path %>">玩转西安论坛</a>
	</div>
	<p>
		<form action="" name="ThisForm" method="post">
			<input onclick="this.value = ''" tabindex=1	id=userName maxlength=40 size=15 value="用户名" name=username> 
			<input tabindex=2 id=password size=10 type=password name=userPw>
			<input type="button" value="登录" onclick="doLogin()">
		</form>
	</p>
	</div>
	</c:if>
	
	<c:if test="${not empty sessionScope.user}">
<DIV id=userinfo>
<DIV id=nav>欢迎您
--- ${sessionScope.user.userName }</DIV>
<P> 
</P></DIV>		
	</c:if>
	</div>
	
	<div id=ad_text></div>
	<div class="mainbox forumlist">
		<c:forEach items="${requestScope.forumsList}" var="group" varStatus="ss">
			<span class=headactions>
			<img onclick="toggle_collapse('category_${ss.index+1 }');" id=category_1_img title=收起/展开 alt=收起/展开 
				 src="<%=path %>/images/collapsed_no.gif"></span> 
			<h3>${group.name }</h3>
		<table id=category_${ss.index+1 } cellspacing=0 cellpadding=0 summary=category1>
		  <thead class=category>
		  <tr>
		    <th>版块</th>
		    <td class=nums>主题</td>
		    <td class=nums>帖数</td>
		    <td class=lastpost>最后发表</td></tr></thead>
		    <c:forEach items="${group.child}" var="forums">
				<tbody id=forum2>
				<tr>
	    		<th ${forums.style}>
	      		<h2>${forums.name }</h2>
	      		<c:if test="${fn:length(forums.child)>0}">
	      		<p>子版块: 
	      		<c:forEach items="${forums.child}" var="sub">
	      		<a href="<%=path %>/topicview.action?fid=${sub.fid }">${sub.name }</a>&nbsp;&nbsp;
	      		</c:forEach>
	      		</p>
	      		</c:if>
	      		</th>
	    		<td class=nums>${forums.topicNum }</td>
	    		<td class=nums>${forums.threadNum }</td>
	    		<td class=lastpost>
	    		<c:if test="${fn:length(forums.topicList)>0}">
		    		<c:forEach items="${forums.topicList}" var="topic">
						<a href="<%=path %>/threadview.action?pid=${topic.pid }">${topic.subject }</a>
		    			<cite>by ${topic.author } - <fmt:formatDate value="${topic.addtime}" pattern="yyyy-MM-dd HH:mm"/></cite>	    
					</c:forEach>
	    		</c:if>
	    		<c:if test="${fn:length(forums.topicList)==0}">
	    			<cite>从未</cite>
	    		</c:if>
	    		</td></tr></tbody>		    
		    </c:forEach>
 		</table>			
		</c:forEach>
	</div>
 		
		<DIV class=legend><LABEL><IMG alt=有新帖的版块 
		src="<%=path %>/images/on.png">有新帖的版块</LABEL><LABEL><IMG 
		alt=无新帖的版块 
		src="<%=path %>/images/off.png">无新帖的版块</LABEL></DIV></div>
<!--  		<div class="footer">  -->
 		<!-- container --> 
<!-- 		<div class="container"> -->
<!-- 			<div class="col-md-6 footer-left"> -->
<!-- 				<h3>联系我们</h3> -->
<!-- 				<form> -->
<!-- 					<input type="text" placeholder="电子邮件,例如1435469178@qq.com" required=""> -->
<!-- 					<input type="submit" value="提交"> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3 footer-middle"> -->
<!-- 				<h3>地址</h3> -->
<!-- 				<div class="address"> -->
<!-- 					<p>西安市碑林区 -->
<!-- 						<span>西安市南缘</span> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 				<div class="phone"> -->
<!-- 					<p>0573-88731088</p> -->
<!-- 				</div> -->
<!-- 			</div>    -->
<!-- 			<div class="col-md-3 footer-right"> -->
<!-- 				<div class="f-logo"> -->
<!-- 					<a href="index.html">玩遍西安</a> -->
<!-- 				</div> -->
<!-- 				<p>西安市碑林区，西安市南缘</p> -->
<!-- 			</div> -->
<!-- 			<div class="clearfix"> </div>	 -->
<!-- 		</div> -->
 		<!-- //container --> 
<!-- 	</div> -->
	<!-- //footer -->
	<!-- copyright -->
<%-- 注释掉		<jsp:include page="incButtom.jsp"/> --%>
  </body>
</html>
