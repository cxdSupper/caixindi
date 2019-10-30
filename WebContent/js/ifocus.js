$(document).ready(function(){
		var len=$(".tu>a").length;
		var i=0;
		var lunhuan;
		var kuan=$(window).width();
		$(".tu>a").css('width',kuan);
		$(".xu:eq(0)").css('backgroundColor','#000');

		function huan()
		{	
			$(".xu:eq("+i+")").css('backgroundColor','#000');
			$(".xu:eq("+i+")").siblings().css('backgroundColor','#666');
			$(".txt>em:eq("+i+")").siblings("em").hide();
			$(".txt>em:eq("+i+")").show();
			$(".tu>a:eq("+i+")").siblings("a").fadeOut(500);
			$(".tu>a:eq("+i+")").fadeIn(1500);
			i=i+1
			if(i==len)
			{i=0}
		
		}
		lunhuan=setInterval(huan,5000);
		$("#hao").find(".xu").click(function(){
			j=$(this).index();
			$(".xu:eq("+j+")").css('backgroundColor','#000');
			$(".xu:eq("+j+")").siblings().css('backgroundColor','#666');
			$(".txt>em:eq("+j+")").siblings("em").hide();
			$(".txt>em:eq("+j+")").show();
			i=j;
			$(".tu>a:eq("+j+")").siblings("a").fadeOut(500);
			$(".tu>a:eq("+j+")").fadeIn(3000);
											  
		})
		
	})
