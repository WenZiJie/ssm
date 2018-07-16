//点击更多答案  弹出输入框 
$("#answer-bar").on('click',function(){
	//切换回答输入框的显示隐藏状态
	$("#answer-editor").slideToggle(1000);
});


//点击回答输入框框,清除问题框中的 提示信息
$("#reply-content").on('click',function(){
	//如果输入框中有  回答内容不能为空
	if($(this).val()=="回答内容不能为空"){
		//清空回答输入框
		$(this).val("");
	}
});


//隐藏 答案列表中 后2条数据
$("#reply-list .reply:gt(2)" ).hide();


//点击 收起其它回答显示 剩下的回答
$("#show-answer-hide").on('click',function(){
	//切换 回答中后三条的显示隐藏状态
	$("#reply-list .reply:gt(2)" ).slideToggle(500);
})




//点击提交回答
$("#sub-reply-btn").on('click',function(e){
	//阻止表单的默认行为
	e.preventDefault();

	//填充数据
	var replyObj = {
			//获取问题id
			questionId : $("#qid").val(),
			//获取回答内容
			content : $("#reply-content").val(),
			//获取回答者id
			replyerId : $("#uid").val(),
			//获取回答者名字
			replyerName : $("#uname").val(),
	}


	//如果用户没有登录,显示模态框
	if(replyObj.replyerId=='' || replyObj.replyerName=='' ){
		showLoginModal();
		return;
	}

	//如果回答内容为空,跳出方法
	if(replyObj.content==''){
		$("#reply-content").val("回答内容不能为空");
		return;
	} 


	//配置ajax请求参数
	var settings = {
			type : 'post',
			url : '/reply/add',
			data : replyObj,
			dataType:"json",
			success : function(data,textStatus,jqXHR ){
				//如果提交回答成功
				if(data.result=="true"){
					//刷新页面
					location.reload();
				}

			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
	}

	//提交后台
	$.ajax(settings);
})





//隐藏所有评论框
$('#reply-list .line .comment-area').hide();




//点击评论按钮,滑动显示 评论框   以及获取该问题回答的所有评论
$(".comment-btn").on('click',function(){
	//切换输入框的状态
	$(this).parents(".content").next(".comment-area").slideToggle(1000);

	//获取回答id
	var replyId  = $(this).find('.rid').val();
	
	var ele = $(this).parents(".content").next(".comment-area").find('.comment-body');
	
	
	hanlerCommentList(ele,'/comment/'+replyId);
});




//点击发布评论按钮
$('.comment-submit').on('click',function(e){
	//阻止表单的默认行为
	e.preventDefault();

	//获取（评论输入框）的值
	var commentVal =$(this).parents('.comment-action-wrap').find("#comment-textarea").val();

	//填充数据
	var commentObj = {
			//获取评论内容
			content :commentVal,
			//获取回答id
			replyId : $(this).prev('.rid').val(),
			//获取评论者id
			commentBy : $("#uid").val(),
			//获取评论者名字
			commentByName : $("#uname").val(),
	}

	//如果用户没有登录,显示模态框
	if(commentObj.commentBy=='' || commentObj.commentByName=='' ){
		showLoginModal();
		return;
	}

	//如果评论输入框的内容为空
	if(commentObj.content==''){
		//提示不能为空
		$(this).parents('.comment-action-wrap').find("#comment-textarea").val('评论内容不能为空');
		return;
	}

	//获取存放该回答所有评论的元素
	var ele = $(this).parents('.comment-action-wrap').next('.comment-body');

	//配置ajax请求参数
	var settings = {
			type : 'post',
			url : '/comment/add',
			data : commentObj,
			dataType:"json",
			success : function(data,textStatus,jqXHR){
				
				//如果提交回答成功
				if(data.result=="true"){
					//更新页面的评论数据
					hanlerCommentList(ele,'/comment/'+commentObj.replyId);
					
					//清空输入框的值
					$("#comment-textarea").val("");
				}
				
			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
			
	}

	//提交后台
	$.ajax(settings);
});



//点击评论输入框框,清除问题框中的 提示信息
$("#comment-textarea").on('click',function(){
	//如果输入框中有  
	//清空回答输入框
	if($(this).val()=='回答内容不能为空'){
		$(this).val("");
	}
});





//点击回复
$("#comment-body").on('click','.reply-comment',function(e){
	//阻止表单的默认行为
	e.preventDefault();
	
	//获取当前回复 对应的 用户名
	var userName = $(this).parents('.comment-entry').find('.comment-entry-username').text();

	//获取当前回复对应的 输入框
	var $area = $(this).parents('.comment-area-inner').find('#comment-textarea');
	
	//设置为  回复:+该评论者的名字
	$area.val("回复 "+userName+" : ");
})



//显示模态框
function  showLoginModal(){
	// 1. 显示遮罩层
	$('#disk').show();

	// 2. 显示登录弹层
	$('#passport-login-pop').show();
}


//处理问题评论
function hanlerCommentList(ele,url){
	//配置ajax请求参数
	var settings = {
			type : 'get',
			url : url,
			data : {},
			dataType:"json",
			success : function(data,textStatus,jqXHR){
				console.log(data);
				//如果提交回答成功
				if(data.result=="true"){
					var commentList = data.commentList;
					
					//初始化数据
					initReplyComments(ele,commentList);
				}
			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
	}
	//提交后台
	$.ajax(settings);
}



//初始化回答下的所有评论
function initReplyComments(ele,commentArr){
	var htmlArr = [];
	
	//点击发布评论之后,更新评论的数量
	var  $obj =ele.parents('.reply').find('.comment-num');
	if(commentArr.length>0){
		$obj.html('('+commentArr[0].commentCount+')');
	}
	
	for(var i=0;i<commentArr.length;i++){
		htmlArr.push("<div class='comment-entry f-12 first last' style='border-top: 1px solid #e8ecee;margin-bottom:15px'>");
		htmlArr.push("	<div class='details f-aid'>");
		htmlArr.push("  	<a class='f-light comment-entry-userface' href='#' target='_blank'>");
		htmlArr.push("   		<img src='https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/2061e8a1a1e6b0b4e4b880e4b8ade5ad99e4ba98215f.jpg'>");
		htmlArr.push("  	</a>");
		htmlArr.push("		<a class='f-light comment-entry-username' href='' target='_blank'>"+commentArr[i].user.userName+"</a>");
		htmlArr.push("		<span class='f-pipe'>|</span>");
		htmlArr.push("		<span class='comment-entry-time'>"+commentArr[i].commentTime+"</span>");
		htmlArr.push(" </div>");
		htmlArr.push("  <div class='comment-content'>");
		htmlArr.push("    <div class='comment-arrow'>");
		htmlArr.push("   	 <em></em><span></span>");
		htmlArr.push("    </div>");
		htmlArr.push("    "+commentArr[i].content+"<a class='reply-comment ml-5 f-light  comm-reply' href='#'>回复</a>");
		htmlArr.push("  </div>");
		htmlArr.push("</div>");
	}
	ele.html(htmlArr.join(""));
}


