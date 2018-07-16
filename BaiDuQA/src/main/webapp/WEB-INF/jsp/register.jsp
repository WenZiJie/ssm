<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--STATUS OK-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="百度帐号是登录所有百度系产品的通行证，登录后还可以在帐户管理页管理/修改您的个人信息，包括修改密码、绑定手机、身份认证等">
<title>注册百度帐号</title>
<link rel="shortcut icon" href="https://www.baidu.com/favicon.ico" type="image/x-icon" />
<link rel="icon" sizes="any" mask href="https://www.baidu.com/img/baidu.svg">
<link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/pkg/common.3fe1412.css" />
<link rel="stylesheet" type="text/css" href="https://ss0.bdstatic.com/5LMZfyabBhJ3otebn9fN2DJv/passApi/css/uni_loginv4_1c50fab.css" data-for="result">
<link href="https://passport.baidu.com/static/passpc-base/css/base.css?cdnversion=1525347871" type="text/css" rel="stylesheet" />
<link href="https://passport.baidu.com/static/passpc-base/css/ui/ui.css?cdnversion=1525347871" type="text/css" rel="stylesheet" />
<link href="https://passport.baidu.com/static/passpc-account/css/boot_reg_a416b96.css" type="text/css" rel="stylesheet" />

<style type="text/css">
.tang-pass-reg .pass-text-input {
    height: 35px;
}
</style>
</head>
   
<body>
   <!-- 登陆模态框 -->
  <%@ include file="/WEB-INF/jsp/common/loginModal2.jsp" %>

<div id="wrapper" class=""> 
   <div id="head"> 
    <div class="mod-header"> 
     <img src="/static/img/register-logo.jpg" alt="logo" /> 
    </div> 
   </div> 
   <div id="nav"> 
    <div class="nav-2"> 
     <div class="mod-nav clearfix"> 
      <h1 class="page-type-notab"></h1> 
     </div> 
    </div> 
   </div> 
   <div id="content"> 
    <div class="mod-reg clearfix mod-reg-green"> 
     <div class="reg-content tang-pass-reg" id="reg_content"> 
      <form autocomplete="off" id="TANGRAM__PSP_3__form" method="POST"> 
       <p id="TANGRAM__PSP_3__errorWrapper" class="pass-generalErrorWrapper"> <span id="TANGRAM__PSP_3__error" class="pass-generalError"></span> </p> 
       <p id="TANGRAM__PSP_3__hiddenFields" style="display: none"> <input type="hidden" id="TANGRAM__PSP_3__retu" name="retu" value="https://zhidao.baidu.com/list?fr=daohang" /> <input type="hidden" id="TANGRAM__PSP_3__u" name="u" value="" /> <input type="hidden" id="TANGRAM__PSP_3__quick_user" name="quick_user" value="0" /> <input type="hidden" id="TANGRAM__PSP_3__regMerge" name="regMerge" value="false" /> <input type="hidden" id="TANGRAM__PSP_3__suggestIndex" name="suggestIndex" value="" /><input type="hidden" id="TANGRAM__PSP_3__suggestType" name="suggestType" value="" /><input type="hidden" id="TANGRAM__PSP_3__codeString" name="codeString" value="" /><input type="hidden" id="TANGRAM__PSP_3__vcodesign" name="vcodesign" value="" /><input type="hidden" id="TANGRAM__PSP_3__vcodestr" name="vcodestr" value="" /><input type="hidden" id="TANGRAM__PSP_3__gid" name="gid" value="A982227-7818-4B3E-A912-6C8F44C0219D" /><input type="hidden" id="TANGRAM__PSP_3__app" name="app" value="" /><input type="hidden" id="TANGRAM__PSP_3__staticPage" name="staticPage" value="https://passport.baidu.com/static/passpc-account/html/v3Jump.html" /><input type="hidden" id="TANGRAM__PSP_3__selectedSuggestName" name="selectedSuggestName" value="" /><input type="hidden" id="TANGRAM__PSP_3__isLowpwdCheck" name="isLowpwdCheck" value="undefined" /><input type="hidden" id="TANGRAM__PSP_3__logRegType" name="logRegType" value="pc_regBasic" /><input type="hidden" id="TANGRAM__PSP_3__isexchangeable" name="isexchangeable" value="1" /><input type="hidden" id="TANGRAM__PSP_3__exchange" name="exchange" value="0" /><input type="hidden" id="TANGRAM__PSP_3__subpro" name="subpro" value="" /><input type="hidden" name="sloc" value="" id="TANGRAM__PSP_3__sloc" /> </p> 
       <input type="hidden" node-type="_username" id="_username" name="_username" value="" /> 
       <input type="hidden" node-type="_regpass" id="_regpass" name="_regpass" value="" /> 
       <input type="hidden" node-type="_rsakey" id="_rsakey" name="_rsakey" value="" /> 
       <input type="hidden" node-type="_regfrom" id="_regfrom" name="_regfrom" value="reg" /> 
       <p id="TANGRAM__PSP_3__userNameWrapper" class="pass-form-item pass-form-item-userName" style="display:"> <label for="TANGRAM__PSP_3__userName" id="TANGRAM__PSP_3__userNameLabel" class="pass-label pass-label-userName">用户名</label> <input type="text" style="display: none;" /> <input id="TANGRAM__PSP_3__userName" type="text" name="userName" class="pass-text-input pass-text-input-userName" utocomplete="new-password" value="" placeholder="请设置用户名" /> <span id="TANGRAM__PSP_3__userName_clearbtn" class="pass-clearbtn pass-clearbtn-userName" style="display: none; visibility: hidden;"></span> 
        <spanid="tangram__psp_3__usernameerror" class="pass-item-error pass-item-error-userName" style="display: none;">
         <span id="TANGRAM__PSP_3__userNameSucc" class="pass-item-succ pass-item-succ-userName" style="display: none;"></span>
         <span id="TANGRAM__PSP_3__userNameTip" class="pass-item-tip pass-item-tip-userName" style="display: none"><span id="TANGRAM__PSP_3__userNameTipText" class="pass-item-tiptext pass-item-tiptext-userName">设置后不可更改<br />中英文均可，最长14个英文或7个汉字 </span></span> 
        </spanid="tangram__psp_3__usernameerror"></p> 
       <p id="TANGRAM__PSP_3__phoneWrapper" class="pass-form-item pass-form-item-phone" style="display:"> <label for="TANGRAM__PSP_3__phone" id="TANGRAM__PSP_3__phoneLabel" class="pass-label pass-label-phone">手机号</label><input type="text" style="display: none;" /> <input id="TANGRAM__PSP_3__phone" type="text" name="phone" class="pass-text-input pass-text-input-phone" maxlength="11" autocomplete="new-password" value="" placeholder="可用于登录和找回密码" /><span id="TANGRAM__PSP_3__phone_clearbtn" class="pass-clearbtn pass-clearbtn-phone" style="display: none;"></span><span id="TANGRAM__PSP_3__phoneError" class="pass-item-error pass-item-error-phone"></span><span id="TANGRAM__PSP_3__phoneSucc" class="pass-item-succ pass-item-succ-phone" style="display: none;"></span><span id="TANGRAM__PSP_3__phoneTip" class="pass-item-tip pass-item-tip-phone" style="display: none"><span id="TANGRAM__PSP_3__phoneTipText" class="pass-item-tiptext pass-item-tiptext-phone">请输入中国大陆手机号,其他用户不可见</span></span><span class="pass-item-placeholder" id="TANGRAM__PSP_3__Placeholder">可用于登录和找回密码</span> </p> 
       <input type="password" name="password" style="display: none" /> 
       <p id="TANGRAM__PSP_3__passwordWrapper" class="pass-form-item pass-form-item-password" style="display:"> <label for="TANGRAM__PSP_3__password" id="TANGRAM__PSP_3__passwordLabel" class="pass-label pass-label-password">密码</label> <input type="password" style="display: none;" /> <input id="TANGRAM__PSP_3__password" type="password" name="passWord" class="pass-text-input pass-text-input-password" autocomplete="new-password" value="" placeholder="请设置登录密码" /><span id="TANGRAM__PSP_3__password_clearbtn" class="pass-clearbtn pass-clearbtn-password" style="display: none;"></span><span id="TANGRAM__PSP_3__passwordError" class="pass-item-error pass-item-error-password" style="display: none;"><span class="pwd-strength nopwd"><span class="pwd-strength-sum"><em class="pwd-strength-bg">&nbsp;</em><em class="pwd-strength-sco">&nbsp;</em><span class="pwd-strength-title"></span></span><span class="pwd-strength-detail">请输入密码</span></span></span><span id="TANGRAM__PSP_3__passwordSucc" class="pass-item-succ pass-item-succ-password" style="display: none;"></span><span id="TANGRAM__PSP_3__passwordTip" class="pass-item-tip pass-item-tip-password" style="display: none"><span id="TANGRAM__PSP_3__passwordTipText" class="pass-item-tiptext pass-item-tiptext-password"> </span></span></p>
       
       <p id="TANGRAM__PSP_3__userNameWrapper" class="pass-form-item pass-form-item-userName" style="display:"> <label for="TANGRAM__PSP_3__userName" id="TANGRAM__PSP_3__userNameLabel" class="pass-label pass-label-userName">邮箱</label> <input type="text" style="display: none;"> <input id="TANGRAM__PSP_3__userName" type="text" name="email" class="pass-text-input pass-text-input-userName" utocomplete="new-password" value="" placeholder="请输入邮箱"> <span id="TANGRAM__PSP_3__userName_clearbtn" class="pass-clearbtn pass-clearbtn-userName" style="display: none; visibility: hidden;"></span> 
        <spanid="tangram__psp_3__usernameerror" class="pass-item-error pass-item-error-userName" style="display: none;">
         <span id="TANGRAM__PSP_3__userNameSucc" class="pass-item-succ pass-item-succ-userName" style="display: none;"></span>
         <span id="TANGRAM__PSP_3__userNameTip" class="pass-item-tip pass-item-tip-userName" style="display: none"><span id="TANGRAM__PSP_3__userNameTipText" class="pass-item-tiptext pass-item-tiptext-userName">设置后不可更改<br>中英文均可，最长14个英文或7个汉字 </span></span> 
        </spanid="tangram__psp_3__usernameerror"></p>
        
       <div class="pwd-checklist-wrapper"> 
        <span class="pwd-checklist-arrow"><em class="arrowa">◆</em><em class="arrowb">◆</em></span> 
        <!-- 										<ul id="TANGRAM__PSP_3__pwdChecklist" class="pwd-checklist"> --> 
        <!-- 											<li id="TANGRAM__PSP_3__pwd_checklist_len" data-rule="len" --> 
        <!-- 												class="pwd-checklist-item">长度为6~14个字符</li> --> 
        <!-- 											<li id="TANGRAM__PSP_3__pwd_checklist_cha" data-rule="cha" --> 
        <!-- 												class="pwd-checklist-item">支持数字,大小写字母和标点符号</li> --> 
        <!-- 											<li id="TANGRAM__PSP_3__pwd_checklist_spa" data-rule="spa" --> 
        <!-- 												class="pwd-checklist-item">不允许有空格</li> --> 
        <!-- 										</ul> --> 
       </div> 
       <p></p> 
       <p id="TANGRAM__PSP_3__verifyCodeSendWrapper" class="pass-form-item pass-form-item-verifyCodeSend"> <label for="TANGRAM__PSP_3__verifyCode" id="TANGRAM__PSP_3__verifyCodeLabel" class="pass-label pass-label-verifyCode">验证码</label><input id="TANGRAM__PSP_3__verifyCode" type="text" name="verifyCode" class="pass-text-input pass-text-input-verifyCode" autocomplete="off" maxlength="6" placeholder="请输入验证码" /><span id="TANGRAM__PSP_3__verifyCode_clearbtn" class="pass-clearbtn pass-clearbtn-verifyCode" style="display: none;"></span><input id="TANGRAM__PSP_3__verifyCodeSend" type="button" value="获取短信验证码" class="pass-button pass-button-verifyCodeSend" autocomplete="off" /><span id="TANGRAM__PSP_3__verifyCodeError" class="pass-item-error pass-item-error-verifyCodeSend"></span><span id="TANGRAM__PSP_3__verifyCodeSendTip" class="pass-item-tip pass-item-tip-verifyCodeSend"></span> </p> 
       <p id="TANGRAM__PSP_3__isAgreeWrapper" class="pass-form-item pass-form-item-isAgree"> <input name="isAgree" id="TANGRAM__PSP_3__isAgree" type="checkbox" class="pass-checkbox-input pass-checkbox-isAgree" autocomplete="off" /><label for="TANGRAM__PSP_3__isAgree">阅读并接受</label><a target="_blank" href="http://passport.baidu.com/static/passpc-account/html/protocal.html">《百度用户协议》</a>及<a target="_blank" href="https://www.baidu.com/duty/yinsiquan.html">《百度隐私权保护声明》</a><a><span id="TANGRAM__PSP_3__isAgreeError" class="pass-item-error pass-item-error-isAgree"></span></a> </p> 
       <p id="TANGRAM__PSP_3__submitWrapper" class="pass-form-item pass-form-item-submit"> <a><input id="TANGRAM__PSP_3__submit" type="submit" value="注册" class="pass-button pass-button-submit" /></a> </p> 
       <div id="TANGRAM__PSP_3__tip" class="pass-pop-tip" style="left: 420px; top: 40px; display: none;"> 
        <div class="pass-pop-tip-header"></div> 
        <div class="pass-pop-tip-container"> 
         <div class="pass-pop-tip-body"> 
          <div class="pass-pop-tip-content" id="TANGRAM__PSP_3__tipContainer"></div> 
         </div> 
        </div> 
       </div> 
      </form> 
     </div> 
     <div class="reg-sms"> 
      <h3 class="reg-sms-title">手机快速注册</h3> 
      <div class="reg-sms-content"> 
       <p class="reg-sms-p reg-sms-p-text">请使用中国大陆手机号，编辑短信：</p> 
       <p class="reg-sms-p reg-sms-p-warn">6-14位字符（支持数字/字母/符号）</p> 
       <p class="reg-sms-p reg-sms-p-text">作为登录密码，发送至：</p> 
       <p class="reg-sms-p reg-sms-p-warn">1069 0691 036590</p> 
       <p class="reg-sms-p reg-sms-p-last">即可注册成功，手机号即为登录帐号。</p> 
       <p class="reg-sms-qrcode"> <img src="https://passport.baidu.com/static/passpc-account/img/reg/upreg.png" /><br /> <span>请使用手机百度进行扫码</span> </p> 
      </div> 
     </div> 
     <div class="login-link" id="login_link"> 
      <span>我已注册，现在就</span> 
      <button class="login-btn login-modal-btn"  id="login-btn">登录</button> 
     </div> 
    </div> 
    <input type="hidden" value="ik" id="jsProduct" /> 
    <input type="hidden" value="" id="jsU" /> 
    <input type="hidden" value="green" id="jsColor" /> 
    <input type="hidden" value="" id="jsSubpro" /> 
    <input type="hidden" value="https://zhidao.baidu.com/list?fr=daohang" id="jsNorealU" /> 
    <input type="hidden" value="https://zhidao.baidu.com/list?fr=daohang" id="jsRetu" /> 
    <input type="hidden" value="1" id="jsnoUsername" /> 
    <input type="hidden" value="" id="jsdefaultAccount" /> 
    <input type="hidden" value="" id="isSchoolReg" /> 
    <input type="hidden" value="" id="hasAuthsite" /> 
   </div> 
   <input type="hidden" value="ik" id="jsProduct" /> 
   <input type="hidden" value="" id="jsU" /> 
   <input type="hidden" value="green" id="jsColor" /> 
   <input type="hidden" value="" id="jsSubpro" /> 
   <input type="hidden" value="https://zhidao.baidu.com/" id="jsNorealU" /> 
   <input type="hidden" value="https://zhidao.baidu.com/" id="jsRetu" /> 
   <input type="hidden" value="1" id="jsnoUsername" /> 
   <input type="hidden" value="" id="jsdefaultAccount" /> 
   <input type="hidden" value="" id="isSchoolReg" /> 
   <input type="hidden" value="" id="hasAuthsite" /> 
  </div> 
  <div id="foot"> 
   <div class="mod-footer"> 
    <div class="copy-box">
     2018&nbsp;&copy;Baidu
    </div> 
   </div> 
  </div> 
  <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script> 
  <script type="text/javascript" src="/static/js/index.js"></script> 
  <script type="text/javascript" src="/static/js/resgister.js"></script> 
  <script type="text/javascript" src="/static/js/bootstrap.js"></script>
</body>
</html>