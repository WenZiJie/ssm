/*点击注册按钮*/
$("#TANGRAM__PSP_3__submit").on('click',function(e){
	//阻止表单的默认行为
	e.preventDefault();
	//获取数据
	var userObj = {
			userName:$("#TANGRAM__PSP_3__userName").val(),
			passWord:$("#TANGRAM__PSP_3__password").val(),
			phone:$("#TANGRAM__PSP_3__phone").val(),
			email:$("[name=email]").val()
	}
	//配置ajax请求参数
	var settings = {
			type : 'post',
			url : '/user/add',
			data : userObj,
			success : function(data,textStatus,jqXHR ){
				var result =data.result;
				
				//对请求结果进行处理
				if(result=="true"){
					
					//注册成功,回到问题查询页面
					alert("注册成功，请前往邮箱激活账户");
					location.href="/index";
				}else{
					//注册失败,刷新本页面
					location.href=location.href;
				}
			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("添加失败");
			}
	}
	
	$.ajax(settings);
});



/* 点击登陆显示模态框 */
$('#login-btn').on('click', function(){
	// 1. 显示遮罩层
	$('#disk').show();
	
	// 2. 显示登录弹层
	$('#passport-login-pop').show();
	

});

$('#TANGRAM__PSP_4__titleButtons').on('click', function(){
	// 1. 显示遮罩层
	$('#disk').hide();
	
	// 2. 显示登录弹层
	$('#passport-login-pop').hide();
	

});


