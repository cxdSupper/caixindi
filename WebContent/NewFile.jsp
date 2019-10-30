<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="ChengshiServlet?city=<%=URLEncoder.encode("长沙","utf-8") %>">长沙</a> | <a href="LeixingServlet?type=<%=URLEncoder.encode("演唱会","utf-8") %>">演唱会</a></br>
	
	
	<div class="list_box">
		<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
	      <div class="right">
	     	<h3 class="yahei"><a href="#">萧敬腾X何韵诗wish love live 2013深圳音乐会 [售票中]</a></h3>
	       <p>维也纳交响乐团名家四重奏由维也纳交响乐团和维也纳歌剧院的音乐家们组成，他们在精湛诠释室内乐的同时也强调独奏表现，同时驾驭古典经典与流行、爵士、拉丁等多样的音乐风格。订票电话：4006-228-228</p>
	       <p>演出时间：2013-07-13 ~ 2013-07-13	 演出场馆：深圳湾体育馆 华润深圳湾体育中心“春茧”  </p>
	       <p>门票价格： 180,380,580,880 元</p>
	       <p>所属栏目：演唱会  流行</p>
	   		<p class="buy"><a href="#"> </a></p>
	      </div>
   </div>

</body>
</html>