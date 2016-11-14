 $(function(){
 //check number
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
	//清
	 $(".num-select li div.kind").find("span").click(function(){
		$(this).toggleClass("clicked");
	})
	$(".k-clear").find("span").click(function(){
		$(this).addClass("clicked").siblings().removeClass("clicked");
		var $numbers=$(this).parent().siblings(".kind");
		if (!$(this).parent().parent().parent().parent().hasClass("caizhongw")) {
			switch($(this).index()){
	            case 0:$numbers.find("span").removeClass("clicked");break;
		    }
		}else{
			switch($(this).index()){
	            case 0:$numbers.find("span").removeClass("clicked");break;
		    }
		}
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
    		$("#basic-dialog-ok").modal({
                "opacity":30
	        });
	        return false;
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
