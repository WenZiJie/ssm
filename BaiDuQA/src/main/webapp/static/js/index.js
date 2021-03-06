$(this).keydown(function(event){
		event=window.event||e; 
		if(event.keyCode == 116){
			event.keyCode = 0;
			var type = $(".cur").children().attr("id");
			//初始化页面
			initPage(type);
			return false; 
		}
	});
//初始化页面
$(function(type){
	initPage("default");
});
//点击我要提问,进入提问页面
$('#ask-btn-new').on('click',function(){
	location.href='/question/toadd';
})



//点击注册按钮.进入注册页面
$('#userbar-reg').on('click',function(){
	location.href='/user/register';
})


//点击模态框的登陆按钮
$('#TANGRAM__PSP_10__submit').on('click',function(e){

	//阻止form表单的默认行为
	e.preventDefault();

	//获取表单数据
	var userObj = {
			userName : $('[name=userName]').val(),
			passWord : $('[name=passWord]').val(),
			isFreeLogin : $('[name=isFreeLogin]:checked').val()
	}



	if(userObj.userName=='' || userObj.passWord==''){
		$("#TANGRAM__PSP_10__error").html("用户名或密码不能为空");
		return;
	}

	//配置ajax参数
	var settings = {
			type : 'post',
			url : '/login',
			data : userObj,
			dataType:"json",
			success : function(data,textStatus,jqXHR ){
				//如果验证失败,做失败的处理
				if(data.result=="statefalse"){
					//提示用户未激活
					$("#TANGRAM__PSP_10__error").html("用户未激活，请前往邮箱激活");
					setTimeout(function(){
						location.href=data.email
					},2000);
					return;
				}
				//如果验证失败,做失败的处理
				if(data.result=="false"){
					//提示输入错误
					$("#TANGRAM__PSP_10__error").html("用户名或密码输入有误");
					
					//两秒后删除提示
					setTimeout(function(){
						$("#TANGRAM__PSP_10__error").html("");
					},2000);
					return;
				}
				location.reload(false);
			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
	}

	//提交后台
	$.ajax(settings);
})



//点击筛选按钮,根据关键字查询问题
$('.goto-search').on('click',function(){

	//获取输入的问题关键字
	var keyWord = $('.search-text').val();

	//提交后台
	$.get('/question/',{title:keyWord,type:'default'},function(data){
		//获取后台数据
		var questionArr = data.questionList;

		if(questionArr != null){
			//调用方法处理页面
			handlePage(questionArr);
		}
	});

});



	$(".nav-list").on('click','.nav-link',function() {
		var type = $(this).attr("id");
		$(".nav-item").attr("class","nav-item");
		$(this).parent().attr("class","nav-item cur");
		initPage(type);
});

//初始化页面
function initPage(type){
	//配置ajax参数
	var settings = {
			type : 'post',
			url : '/question/',
			data : {type:type},
			dataType:"json",
			success : function(data,textStatus,jqXHR ){
				//获取后台数据
				var questionArr = data.questionList;
				for (var i=0;i<questionArr.length;i++)
				{
					questionArr[i].submitterTime=relativeTime(questionArr[i].submitterTime);
					console.log(questionArr[i].submitterTime);
				}
				if(questionArr != null){
					//调用方法处理页面
					handlePage(questionArr);
				}

			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
	}

	//提交后台
	$.ajax(settings);
}


//处理页面数据
function  handlePage(dataArr){
	var template = $('#template').html();
	  Mustache.parse(template);   // optional, speeds up future uses
	  var rendered = Mustache.render(template, {list:dataArr});
	  $('.question-list-ul').html(rendered);
}


//判断是否是登录状态
function isLogin(){
	var obj={};
	$.get("/isLogin",function(data){

		obj = data;


	})
	return obj;
}



/* 点击登陆显示模态框 */
$('#userbar-login').on('click', function(){
	// 1. 显示遮罩层
	$('#disk').show();

	// 2. 显示登录弹层
	$('#passport-login-pop').show();


});

$('#TANGRAM__PSP_4__titleButtons').on('click', function(){
	// 1. 隐藏遮罩层
	$('#disk').hide();

	// 2. 隐藏登录弹层
	$('#passport-login-pop').hide();

});

//155977712680
//计算相对时间(问题发布时间)
function  relativeTime(subbmitterTime){
	var interval ="";
	//获取当前时间的毫秒数
	var timestamp=new Date().getTime();
	//	1000 * 60 *60 *24 *30 *12
	//用现当前毫秒数    -  发布时间毫秒数   得出的就是   以前的时间与现在时间的时间间隔
	var time =timestamp - subbmitterTime;// 得出的时间间隔是毫秒  

	if (time/1000 < 5 && time/1000 >= 0) {
		//如果时间间隔小于5秒则显示“刚刚”time/5得出的时间间隔的单位是秒  
		interval ="刚刚"; 
	}else if(time/1000 < 60 && time/1000 > 0) {  
		//如果时间间隔小于60秒则显示多少秒前  
		var se = parseInt((time%60000)/1000);  
		interval = se + "秒前";  

	}else if(time/60000 < 60 && time/60000 > 0) {  
		//如果时间间隔小于60分钟则显示多少分钟前  
		var m = parseInt((time%3600000)/60000);//得出的时间间隔的单位是分钟  
		interval = m + "分钟前";  

	} else if(time/3600000 < 24 && time/3600000 >= 0) {  
		//如果时间间隔小于24小时则显示多少小时前  
		var h = parseInt(time/3600000);//得出的时间间隔的单位是小时  
		interval = h + "小时前";  

	} else if (time/(3600000 * 24)<30 && time/(3600000 * 24)>=0) {
		var d = parseInt(time/(3600000 * 24));//得出的时间间隔的单位是小时  
		interval = d + "天前"; 
	}else if (time/(3600000 * 24 *30)<12 && time/(3600000 * 24 *30)>=0) {
		var m = parseInt(time/(3600000 * 24 *30));//得出的时间间隔的单位是小时  
		interval = m + "个月前"; 
	}  
	return interval;  
}




//点击显示  标签库遮罩层,标签模态框
  $('.interest-list #open-tag-list').on('click',function(e){
	  $('#tag-list-block').show();
	  $('#tag-list-box').show();
  })
  
  //点击 x 和 取消 按钮  隐藏 标签库遮罩层,标签模态框
  $('.close-tag-box').on('click',function(e){
	  $('#tag-list-block').hide();
	  $('#tag-list-box').hide();
  })
  
  
  //移入 全部分类 时显示 一级分类的弹出框
  //移出 全部分类 时显示 一级分类的弹出框
  $('.dialog-change-class .class-name').hover(function(){
	  //鼠标移入时触发
	  $(this).parents('.selecting-box-title').addClass('show-level-1-class');
  },function(){
	  //鼠标移出时触发
	  $(this).parents('.selecting-box-title').removeClass('show-level-1-class');
  })
 
  


