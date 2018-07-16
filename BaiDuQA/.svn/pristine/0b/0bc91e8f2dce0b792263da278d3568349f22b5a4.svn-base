<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://passport.baidu.com/static/passpc-base/css/base.css?cdnversion=1525872542"
	type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="/static/js/jquery-1.12.4.js">	
	</script>
	<script type="text/javascript" src="/static/js/mustache.js">	
	</script>
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
	<style type="text/css">
	#content{
		margin: 0px auto;
	}
	</style>
</head>
<body>
 
<div id="wrapper" class="">
		<div id="head">
			<div class="mod-header">
			</div>
			<ul class="mod-userbar">
				<li><a id="mod-userbar-login" href="javascript:void(0)">登录</a></li>
				<li>|</li>
				<li><a href="javascript:void(0)">注册</a></li>
			</ul>
		</div>
		
		<div id = "dib">
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
				<form>
					<div class="mod-step-detail p-t30">
						<p class="step-email-info">
							请填写您需要找回的帐号
						</p>
							<span style="color: red" id="userName_clearBtn"></span>							 
						<div class="pass-input-container clearfix" id="pass-auth-select">
							<input type="text" class="pass-input pass-input-forgot"
								name="userName" value="" id="account" placeholder="请输入用户名">
						</div>
						<div>
							<input type="button" value="下一步"
								class="pass-button-submit" id="submit">  
						</div>
					</div>
				</form>
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
$('#submit').on('click',function(e){
	//获取表单数据
	var userObj = {
			userName : $('[name=userName]').val(),
	}
	if(userObj.userName==''){
		$("#userName_clearBtn").text("请输入用户名");
		setTimeout(function(){
			$("#userName_clearBtn").html("");
		},2000);
		return;
	}

	//配置ajax参数
	var settings = {
			type : 'get',
			url : '/user/sendEmail',
			data : userObj,
			dataType:"json",
			success : function(data,textStatus,jqXHR ){
				//如果验证失败,做失败的处理
				if(data.result=="false"){
					//提示输入错误
					$("#userName_clearBtn").html("用户名或密码输入有误");
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