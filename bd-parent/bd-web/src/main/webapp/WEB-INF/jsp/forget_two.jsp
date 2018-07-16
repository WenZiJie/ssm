<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="http://r.baiduqa.com/static/js/jquery-1.12.4.js"></script> 
<link
	href="https://passport.baidu.com/static/passpc-base/css/base.css?cdnversion=1525872542"
	type="text/css" rel="stylesheet" />
<link
	href="https://passport.baidu.com/static/passpc-base/css/ui/ui.css?cdnversion=1525872542"
	type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="https://passport.baidu.com/passApi/html/css/realUserTag.css">
<link
	href="https://passport.baidu.com/static/passpc-security/css/forgot_0b8592f.css"
	type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="https://passport.baidu.com/passApi/css/uni_forceverify_1fc77c5.css"
	data-for="result">
</head>
<body>
	 
	<div id="wrapper" class="">
		<div id="head">
			<ul class="mod-userbar">
				<li><a id="mod-userbar-login" href="javascript:void(0)">登录</a></li>
				<li>|</li>
				<li><a
					href="javascript:void(0)">注册</a></li>
			</ul>
		</div>
		<div id="nav">
			<div class="nav-2">
				<div class="mod-nav clearfix">
					<h1 class="page-type-notab">找回密码</h1>
				</div>
			</div>
		</div>
  
  <!--这是主要内容  -->
		<div id="content">
			<div class="mod-forgot">
				<div class="mod-step-detail p-t30">
					<p class="step-form-tip m_l80">您正在找回的帐号是：${userName}</p>
						<div class="pass-input-container clearfix">
							<label class="pass-input-title l-h40" for="password">新密码</label>
							<input type="password"
								class="pass-input pass-input-forgot left "
								name="password" id="password" value="" autocomplete="off"  placeholder="  数字 / 字母组合">
						</div>
						
						<div class="pass-input-container clearfix">
							<label class="pass-input-title l-h40" for="repassword">确认新密码</label>
							<input type="password" class="pass-input pass-input-forgot left"
								name="verifypwd" id="verifypwd" value="" autocomplete="off" placeholder="  确认新密码">
							<input type="hidden" value="${id}" id="id">
						</div>
						
						<div class="m_l80">
							<input class="pass-button-submit" type="button" name=""
								value="确定" id="submit-resetpwd">
								<span style="color: red" id="userName_clearBtn"></span>		
						</div>
				</div>
			</div>
			 
		</div>
 
 <!--这是底部  -->
		<div id="foot">
			<div class="mod-footer">
				<div class="copy-box">2018&nbsp;©Baidu</div>
			</div>
		</div>
	</div>
	 <script type="text/javascript">
$('#submit-resetpwd').on('click',function(e){
	//获取表单数据
	var repassword = $('#verifypwd').val();
	var userObj = {
			id: $('#id').val(),
			passWord : $('#password').val()
	}
	if(userObj.password==''){
		$("#userName_clearBtn").text("请输入密码");
		setTimeout(function(){
			$("#userName_clearBtn").html("");
		},2000);
		return;
	}
	if($('#password').val().trim() != $('#verifypwd').val().trim()){
		$("#userName_clearBtn").text("两次输入密码不一致");
		setTimeout(function(){
			$("#userName_clearBtn").html("");
		},2000);
		return;
	}
	//配置ajax参数
	var settings = {
			type : 'post',
			url : '/user/updateUser',
			data : userObj,
			dataType:"json",
			success : function(data,textStatus,jqXHR ){
				//如果验证失败,做失败的处理
				if(data.result=="fales"){
					//提示输入错误
					$("#userName_clearBtn").html("修改密码失败");
					//两秒后删除提示
					setTimeout(function(){
						$("#userName_clearBtn").html("");
					},2000);
					return;
				}
				if(data.result=="true"){
					//提示输入错误
					$("#userName_clearBtn").html("修改密码成功");
					//两秒后删除提示
					setTimeout(function(){
						$("#userName_clearBtn").html("");
					},2000);
					return;
				}
			},
			error :function(jqXHR,textStatus,errorThrown ){
				console.log("服务器异常");
			}
	}
	//提交后台
	$.ajax(settings);
})
</script>


</body>
</html>