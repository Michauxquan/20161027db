$(function(){
	$(".navs").find("li").click(function(){
		$(this).addClass("navs-cur").siblings().removeClass("navs-cur");
		switch($(this).index()){
			case 0:$(".bthree-star").show().siblings("div").hide();break;
			case 1:$(".two-star").show().siblings("div").hide();break;
			case 2:$(".fixed").show().siblings("div").hide();break;
			case 3:$(".non-fixed").show().siblings("div").hide();break;
			case 4:$(".interests").show().siblings("div").hide();break;
		}
	})
	
	$(".all-ways").find("li").click(function(){
		$(this).addClass("all-ways-cur").siblings().removeClass("all-ways-cur");
		$(this).parent().parent().siblings(".play-section").children("div").eq($(this).index()).show();
		$(this).parent().parent().siblings(".play-section").children("div").eq($(this).index()).siblings().hide();
	})
	$(".bthree-star .all-ways .zhixuan,.two-star .all-ways .zhixuan").find("li").click(function(){
		
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).siblings().hide();
		$(this).parent().parent().siblings(".zuxuan").find("li").removeClass("all-ways-cur");
	})
	$(".bthree-star .all-ways .zuxuan,.two-star .all-ways .zuxuan").find("li").click(function(){
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq(parseInt($(this).index()+4)).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()+4).siblings().hide();
		$(this).parent().parent().siblings(".zhixuan").find("li").removeClass("all-ways-cur");
	})
	$(".non-fixed .all-ways .oneSize").find("li").click(function(){
		
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).siblings().hide();
		$(this).parent().parent().siblings(".twoSize").find("li").removeClass("all-ways-cur");
	})
	$(".non-fixed .all-ways .twoSize").find("li").click(function(){
		
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq(parseInt($(this).index()+1)).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()+1).siblings().hide();
		$(this).parent().parent().siblings(".oneSize").find("li").removeClass("all-ways-cur");
	})
	// $("ul.num-select li").find("div").find("span").click(function(){
	// 	$(this).toggleClass("clicked");
	// })
    $(".chase-action>ul li").click(function(){
    	$(this).addClass("chase-action-cur").siblings().removeClass("chase-action-cur");
    	switch($(this).index()){
    		case 0:$(".lrl-chase").show();$(".tb-chase,.fb-chase").hide();break;
    		case 1:$(".tb-chase").show();$(".lrl-chase,.fb-chase").hide();break;
    		case 2:$(".fb-chase").show();$(".lrl-chase,.tb-chase").hide();break;
    	}
    })
})

 