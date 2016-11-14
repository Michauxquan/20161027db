$(function(){
	$(".navs").find("li").click(function(){
		$(this).addClass("navs-cur").siblings().removeClass("navs-cur");
		switch($(this).index()){
			case 0:$(".three-star").show().siblings("div").hide();break;
			case 1:$(".two-star").show().siblings("div").hide();break;
			case 2:$(".fixed").show().siblings("div").hide();break;
			case 3:$(".non-fixed").show().siblings("div").hide();break;
			case 4:$(".optional").show().siblings("div").hide();break;
			case 5:$(".interests").show().siblings("div").hide();break;
		}
	})
	$(".all-ways").find("li").click(function(){
		$(this).addClass("all-ways-cur").siblings().removeClass("all-ways-cur");
		$(this).parent().parent().siblings(".play-section").children("div").eq($(this).index()).show();
		$(this).parent().parent().siblings(".play-section").children("div").eq($(this).index()).siblings().hide();
	})
	$(".optional .all-ways .fushi").find("li").click(function(){
		
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()).siblings().hide();
		$(this).parent().parent().siblings(".danshi").find("li").removeClass("all-ways-cur");
	})
	$(".optional .all-ways .danshi").find("li").click(function(){
		
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq(parseInt($(this).index()+8)).show();
		$(this).parent().parent().parent().siblings(".play-section").children("div").eq($(this).index()+8).siblings().hide();
		$(this).parent().parent().siblings(".fushi").find("li").removeClass("all-ways-cur");
	})
	//选号：
	$(".num-select li div.numbers").find("span").click(function(){
		$(this).toggleClass("clicked");
	})
	//全大小奇偶清：
	$(".sel-actions").find("span").click(function(){
		$(this).addClass("clicked").siblings().removeClass("clicked");
		var $numbers=$(this).parent().siblings(".numbers");
		if (!$(this).parent().parent().parent().parent().hasClass("caizhongw")) {
			switch($(this).index()){
	            case 0:$numbers.find("span").addClass("clicked");break;
	            case 1:$numbers.find("span:gt(4)").addClass("clicked");$numbers.find("span:lt(5)").removeClass("clicked");break;
	            case 2:$numbers.find("span:lt(5)").addClass("clicked");$numbers.find("span:gt(4)").removeClass("clicked");break;
	            case 3:$numbers.find("span:even").addClass("clicked");$numbers.find("span:odd").removeClass("clicked");break;
	            case 4:$numbers.find("span:odd").addClass("clicked");$numbers.find("span:even").removeClass("clicked");break;
	            case 5:$numbers.find("span").removeClass("clicked");break;
		    }
		}else{
			switch($(this).index()){
	            case 0:$numbers.find("span").addClass("clicked");break;
	            case 1:$numbers.find("span:gt(2)").addClass("clicked");$numbers.find("span:lt(3)").removeClass("clicked");break;
	            case 2:$numbers.find("span:lt(3)").addClass("clicked");$numbers.find("span:gt(2)").removeClass("clicked");break;
	            case 3:$numbers.find("span:even").addClass("clicked");$numbers.find("span:odd").removeClass("clicked");break;
	            case 4:$numbers.find("span:odd").addClass("clicked");$numbers.find("span:even").removeClass("clicked");break;
	            case 5:$numbers.find("span").removeClass("clicked");break;
		    }
		}
	})
	
	$("play-action").find("input[type='button']").click(function() {
		var $numbers=$(this).parent().siblings(".num-select").children(".numbers");
	})
	//加1减1：
	$("img[alt='plus']").click(function(){
		var $val=$(this).siblings(".times").val();
		$(this).siblings(".times").val(parseInt($val)+1);
	})
	$("img[alt='minus']").click(function(){
		var $val=$(this).siblings(".times").val();
		if ($val>0) {
			$(this).siblings(".times").val($val-1);
		}
	})
	//追号3导航：
    $(".chase-action>ul li").click(function(){
    	$(this).addClass("chase-action-cur").siblings().removeClass("chase-action-cur");
    	switch($(this).index()){
    		case 0:$(".lrl-chase").show();$(".tb-chase,.fb-chase").hide();break;
    		case 1:$(".tb-chase").show();$(".lrl-chase,.fb-chase").hide();break;
    		case 2:$(".fb-chase").show();$(".lrl-chase,.tb-chase").hide();break;
    	}
    })
    //发起追号：
    $(".chase-num,.add-bet").find("input[type='button']").click(function(){
    	$this=$(this);
    	if ($(".num-selected table tbody tr:first-child").find("td").length==9) {

    	    $this.toggleClass("up");
    		
    		$(".chase-action").toggle();

    		if ($this.hasClass("up")) {
                $this.siblings().find("input[type='checkbox']").prop("checked",true);
    		}else{
    			$this.siblings().find("input[type='checkbox']").prop("checked",false);
    		}
    	}else{
    		$('#basic-dialog-ok').modal({
                "opacity":30
	        });
	        return false;
    	}
    })


    
    //添加投注--三星直选复式：
    $(".three-star .play-section .zhifu .play-action").find("input[type='button']").click(function(){
    	$("this").parent().siblings(".num-select").find("div.numbers").each(function(){
            if ($(this).find("span").hasClass("clicked")) {
            	return 
            }
    	})

    })
     //点击tr选中checkbox
     $(function () {
            $(".select-table tbody tr").click(function () {
                $(this).children().toggleClass("bgcolor");
                if ($(this).children().css("background-color") != $(document.body).css("background-color")) {
                    $(this).children().first().children().attr("checked", true);
                } else {
                    $(this).children().first().children().attr("checked", false);
                }
            });
       }); 

})