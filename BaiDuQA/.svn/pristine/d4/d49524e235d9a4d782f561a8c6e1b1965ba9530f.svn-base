/**
 * 文本域边框样式
 */
$("textarea").on({focus:function(){
	    $(this).parents("div.qd-content").addClass("focus");
   },
   blur:function(){
	    $(this).parents("div.qd-content").removeClass("focus");
   }
});

/**
 * 标题验证
 * @returns
 */
$("#title-area").on("keyup",function(){
	  var content =  $("#title-area").val();
	  $("#title-count b").html(content.length);
	  if(content.length>49){
		  $("#title-count b").css("color","red");
		  $("#title-error-tip").text("您的提问标题超过49个字，请精简或将更多内容输入到问题补充中");
		  $("#title-error-tip").css("display","block");
	  }else{
		  $("#title-count b").css("color","");
		  $("#title-error-tip").text("");
		  $("#title-error-tip").css("display","none");
	  }
	  
});

/**
 * 上传图片图标的样式
 */
$("#rt_rt_1ccqsfu0mme1768qip12t5qi01 label").on({
	mouseover:function(){
		$("div.webuploader-pick").addClass("webuploader-pick-hover");
	},
	mouseout:function(){
		$("div.webuploader-pick").removeClass("webuploader-pick-hover");
	},
	click:function(){
		//模拟用户点击文件域
		$("input.webuploader-element-invisible").trigger("click");
	}
});

/**
 * 点击添加标签弹出窗口
 * @returns
 */
$("div.add-tag-handler span").on("click",function(){
	$("div#tier").addClass("ui-widget-overlay ui-front");
	$("div.ui-dialog").css("display","block");
});

/**
 * 点击×关闭标签窗口
 * @returns
 */
$("button.ui-dialog-titlebar-close").on({
	click:function(){
		console.log(111);
		$("div#tier").removeClass("ui-widget-overlay ui-front");
		$("div.ui-dialog").css("display","none");
    },
    mouseover:function(){
    	$(this).addClass("ui-state-hover");
    }
	
});

/**
 * 点击取消关闭标签窗口
 * @returns
 */
$("div.clearfix .cancel").on({
	click:function(){
		$("div#tier").removeClass("ui-widget-overlay ui-front");
		$("div.ui-dialog").css("display","none");
    }
});

/**
 * 点击保存将预选栏的标签添加标签栏中
 */
$("div.clearfix .saveTo").on({
	click:function(){
		var html = $("div.selected-search-tag").html();
		$("div.tag-list").html(html);
		$("div#tier").removeClass("ui-widget-overlay ui-front");
		$("div.ui-dialog").css("display","none");
    }
});

/**
 * 搜索标签关键字选择标签
 * @returns
 */
$("input.tag-input-ser").on("keyup",function(){
	var content = $(this).val();
	if($.trim(content)==""){
		$(this).css("border-color","rgb(249, 53, 53)");
		$("div.more-tags-container").css("display","none");
		return;
	}else{
		$(this).css("border-color","rgb(74, 202, 109)");
	}
	$.get("/tag/tags","tag="+content,function(data){
		var html = "";
		if(data.length!=0){
            for ( var i in data) {
            	html +='<a class="tag-item" data-type=""><span>'+data[i].tagName+'</span></a>';
			}
		}else{
			html +='<div class="no-tags-tip">没有找到相关标签</div>';	
		}
		$("div.more-tags-container").html(html);
        $("div.more-tags-container").css("display","block");
	});
});

/**
 * 选中标签添加预选栏
 * @returns
 */
$("div.more-tags-container").on("click","a.tag-item",function(){
	 var text = $(this).text();
	 var html = '<span class="tag-item search-tag selected"><i class="i-del"></i><span>'+text+'</span></span>';
	 $("div.selected-search-tag").append(html);
	 $("div.more-tags-container").css("display","none");
});

/**
	 * 点击选中标签x图标删除
 * @returns
 */
$("div.selected-search-tag").on("click","i.i-del",function(){
	$(this).parent().remove();
});


$("#submit-btn").on("click",function(){
	
	var rid = $(this).attr("userid");
	var rname = $(this).attr("username");
	rid = $.trim(rid)==''? 0 : rid;
	var title = $("#title-area").val();
	var content = $("#content-area").val();
	/**
	 * 预选栏标签和标签栏标签都会选中，等于是获取了两遍，所以/2去掉一遍，
	 * 让循环下标小于/2的数就是一次标签栏的数量
	 * @param i
	 * @returns
	 */
	var tags = [];
	var index = $("span.tag-item span").length/2;
	$("span.tag-item span").each(function(i){
		if(i<index){
			tags.push($(this).text());
		}
	});
	console.log(tags.length);
	if(tags.length==0){
		alert("请选择问题所属标签!");
		return;
	}
	
	$.ajax({
	    type: "POST",
	    url: "/question/addQuestion",  
	    data:{
	    	title : title,
	    	content : content,
	    	questionTag:tags.join(","),
	    	submitterId:rid,
	    	submitterName:rname
	    },//要传到后台的参数，没有可以不写  
	    async : false,
	    dataType:"JSON",
	    success: function(data){
	        var da = JSON.parse(data);
	        if(da.result=='success'){  
	            alert("提问成功");
	        }else{  
	        	alert("系统繁忙，请稍候重试");
	        } 
	    },  
	    error: function (data, status, e){  
	    	console.log("请求错误"); 
	    }  
	});
});

