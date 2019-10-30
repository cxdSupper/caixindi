<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>梦田票务</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="js/jquery-1.7.1.min.js"></script>
<script type=text/javascript src="js/ifocus.js"></script>
<script type="text/javascript" src="js/scool.js"></script>
<script type="text/javascript" src="js/imgp.js"></script>
<script type="text/javascript" src="js/jquery.switchable[all].min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/datepicker.js"></script>

 <script type="text/javascript">
$(document).ready(function(){
	
 
	
	//实例四
	$('.inputDate').DatePicker({
		format:'Y-m-d',
		date: $('#inputDate').val(),
		current: $('#inputDate').val(),
		starts: 1,
		position: 'right',
		onBeforeShow: function(){
			$('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
		},
		onChange: function(formated, dates){
			$('#inputDate').val(formated);
			$('#inputDate').DatePickerHide();
		}
	});
	
 

});
</script>



<!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('.but_gp,.rslides');
</script>
<![endif]-->
</head>
<body>
	<div id="header">
    	<div class="w1002">
        
        	<div class="header_top">
            	   <a href="#" class="dl">用户登录</a><a href="#" class="dl">注册用户</a>|<a href="#">我的梦田</a><span>购物车 <b class="dl">0</b> 件</span><a href="#">梦田导航</a><a href="#">帮助中心</a><a href="#" class="phone">手机购票</a><a href="#" class="jm">演出剧目</a><a href="#" class="cx">真伪查询</a>
            </div>
        
        	<div class="site_logo floatl">
            	<a href="#"><img src="images/site_logo.gif" width="170" height="65" /></a>
            </div>
            
            <div class="header_city floatl">
            	<h3>长 沙</h3>
                <p class="choos"><a href="#">选择城市</a></p>
            </div>
            
            
            <div class="header_search floatl">
            	<p class="hot">热门搜索：<a href="#">刘德华</a>|<a href="#">周杰伦</a>|<a href="#">五月天</a>|<a href="#">何韵诗</a>|<a href="#">许巍</a>|<a href="#">陶喆</a>|<a href="#">更多</a></p>
                <form id="form1" name="form1" method="post" action="">
                	<div><input type="text" name="textfield" id="textfield" class="input_style" /><input type="submit" name="button" id="button" value=" " class="but_tj" /></div>
                </form>
            </div>
        </div>
        
       
       <div id="site_nav">
       		<div class="clearfix nav_post">
            	<span><a href="#">精彩专题</a>|<a href="#">最新动态</a></span><p class="yahei"><a href="#">首 页</a><a href="#">巡 演</a><a href="#">订 票</a><a href="#">售票场馆</a></p>
       		</div>
       </div> 
    </div>
    
    
    <div id="inside_main">
    	
    	<div class="inside_topad">
        
        	<a href="#"><img src="images/topad.jpg" width="1004" height="99" /></a>
        
        </div>
        
      <div class="pro_condition">
        	<dl class="clearfix">
            	<dt><a href="#">类型：</a></dt>
            	<dd>
                	<span>全部</span>|<a href="LeixingServlet?type=<%=URLEncoder.encode("音乐节","utf-8") %>">音乐节</a>|
                	<a href="LeixingServlet?type=<%=URLEncoder.encode("演唱会","utf-8") %>">演唱会</a>|
                	<a href="LeixingServlet?type=<%=URLEncoder.encode("话剧","utf-8") %>">话剧</a>
                </dd>
            </dl>
            
            <dl class="clearfix">
            	<dt><a href="#">城市：</a></dt>
            	<dd>
                	<span>全部</span>|<a href="ChengshiServlet?city=<%=URLEncoder.encode("长沙","utf-8") %>">长沙</a>|
                	<a href="ChengshiServlet?city=<%=URLEncoder.encode("深圳","utf-8") %>">深圳</a>|
                	<a href="ChengshiServlet?city=<%=URLEncoder.encode("广州","utf-8") %>">广州</a>
                    
                </dd>
            </dl>
        </div>
        
        
        
        
        <div class="inside_productlist">
        	<div class="your_post"><strong> 共为您检索出 <b>127</b> 个商品</strong><span>· 您现在的位置：</span><a href="#">梦田票务</a> > <a href="#">演唱会</a></div>
        		<div class="paixu">
                	<span>排序方式：<a href="#" class="this">按热门</a><a href="#">按更新</a><a href="#">按时间</a>
                </div>
                <div class="clear"></div>
        		<c:forEach items="${list}" var="concert" >
                	<div class="list_box">
                	 	<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
	                    <div class="right">
	                    	<h3 class="yahei"><a href="#">${concert.name }</a></h3>
	                        <p>${concert.context }</p>
	                        <p>演出时间：${concert.starttime } ~ ${concert.endtime }	 演出场馆：${ concert.city.name}  </p>
	                        <p>门票价格： ${ concert.ticket.price} 元</p>
	                    	<p class="buy"><a href="#"> </a></p>
	                    </div>
                	</div>
                </c:forEach>
                
                <div class="page_list">
                	<a href="#">上一页</a><a href="#">1</a><a href="#">2</a><span>3</span><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">下一页</a>
                </div>
                
                 
        
        
        
        
        
        </div>
        
        
        
        
    
    
    
    
    
    
    
    
    
    
    
    
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	<div id="footer">
<div class="cont">
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl style="border-right:none;">
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <div class="clear"></div>
         </div>
         
         <div class="footer_boot">
         	<h4><a href="#">公司介绍</a> | <a href="#">品牌识别</a> | <a href="#">联系方式</a> | <a href="#">合作招商</a> | <a href="#">招聘信息</a> | <a href="#">隐私声明</a> | <a href="#">安全认证</a> | <a href="#">友情链接</a> | <a href="#">网站地图</a></h4>
                <p>本网站所有产品设计（包括造型，颜色，图案和观感），功能及其展示形式，均已受版权或产权保护。</p>
                <p>任何公司及个人不得以任何方式复制部分或全部，违者将依法追究责任，特此声明。</p>
                <p>本站部分内容来自互联网或由会员上传，版权归原作者所有。如有问题，请及时联系我们。</p>
                <p>版权所有 梦田票务 Copyright2003-2013 All Rights Reserved 京ICP备11043884号 京公网安备11010102000430号</p>
                <p>湖南梦田体育文化传播有限公司</p>
         </div>
    
    
    	<div class="footer_img"><img src="images/footer_img.gif" width="41" height="57" /></div>
    </div>        
        
        
        
        
        
        
        
        
        


<script>
$(function(){	
	/**/
 
	/*effectsBox*/
	var page = 1;
    var i = 1; 
	$('.effects_box #left').click(function(){
		var $pictureShow = $('.effects_box');
		var downwidth = $pictureShow.width();
		var len = $('.effects_box ul').find('li').length;
		var effects = $('.effects_box ul');
		var page_number = Math.ceil(len/i);
		if( !effects.is(":animated") ){
			if(page == 1){
				effects.animate({left: '-='+downwidth*(page_number-1)},"slow");
				page = page_number;
			}else{
				effects.animate({left:'+='+downwidth},"slow");	
				page--;	
			}
		}
	});   
	$('.effects_box #right').click(function(){
		var $pictureShow = $('.effects_box');
		var downwidth = $pictureShow.width();
		var len = $('.effects_box ul').find('li').length;
		var effects = $('.effects_box ul');
		var page_number = Math.ceil(len/i);
		if( !effects.is(":animated") ){
			if( page == page_number){
				effects.animate({left:'0px'},"slow");
			page = 1;
			}else{
				effects.animate({left:'-='+downwidth},"slow");
				page++;
			}
		}
	});
	$(".effects_box li").hover( function(){
		$(this).find("h3").slideDown(300);
	},function(){
		$(this).find("h3").slideUp(300);
	});	
	$(".effects_box .uclick").click(function(){
		$(".effects_box").animate({ left: -20 }).animate({ left: 20 }).animate({ left: -10 }).animate({ left: 5 }).animate({ left: 0 });
	});
	$(function(){
		var _ebox = $(".effects_box ul"),
			_eboxx = $(".effects_box ul li").width(),
			_eboxi = _ebox.find("li").length;
		_ebox.css({width:_eboxx * _eboxi});
	});
	
	$(".sibebox li").hover( function(){
		var _cbox = $(this).closest(".sibebox").find(".content .within")
		$(this).addClass("sel").siblings().removeClass("sel");
		_cbox.eq($(this).prevAll().length).show().siblings().hide();
	});
	 
});
</script>

<!--<script type="text/javascript" src="js/slideshow.js"></script>-->

</body>
</html>
