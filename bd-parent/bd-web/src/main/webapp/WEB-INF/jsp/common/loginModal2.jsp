<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 遮罩层 -->
<div id="disk"style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: 1000; background-color: #7F7F7F; display: none; opacity: 0.7;"></div>




<!-- 登陆弹出层 -->

<div id="passport-login-pop"
	class="tang-pass-pop-login-merge tang-pass-pop-login-tpl-ik tang-pass-pop-login-color-green tang-pass-pop-login"

	style="left: 36%; top: 14%; z-index: 60001; display: none;">
	<div class="tang-background" id="TANGRAM__PSP_6__"
		style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -9; -webkit-user-select: none; -moz-user-select: none;"
		onselectstart="return false">
		<div class="tang-background-inner" style="width: 100%; height: 100%;"
			id="TANGRAM__PSP_6__inner"></div>
		<div
			style="filter: progid:DXImageTransform.Microsoft.Alpha(opacity:0); position: absolute; z-index: -1; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; background-color: #FFFFFF"></div>
	</div>
	<div class="tang-foreground" id="TANGRAM__PSP_4__foreground" style="width: 356px;">

		<div class="tang-title tang-title-dragable" id="TANGRAM__PSP_4__title">
			<div class="buttons" id="TANGRAM__PSP_4__titleButtons">
				<a id="TANGRAM__PSP_4__closeBtn" class="close-btn" href="###"
					onmousedown="event.stopPropagation &amp;&amp; event.stopPropagation(); event.cancelBubble = true; return false;"
					onclick="return false;"></a>
			</div>
			<span id="TANGRAM__PSP_4__titleText">&nbsp;</span>
		</div>

		<div class="tang-body" id="TANGRAM__PSP_4__body">
			<div class="tang-content" id="TANGRAM__PSP_4__content">
				<div id="passport-login-pop-dialog">
					<div class="clearfix">
						<div class="pass-login-pop-content">
							<div class="pass-login-pop-form">
								<div id="passport-login-pop-api" class="tang-pass-login"
									style="display: block; visibility: visible; opacity: 1;">
									<form id="TANGRAM__PSP_10__form" class="pass-form pass-form-normal" method="POST" autocomplete="off">
										<p class="pass-form-logo">用户名密码登录</p>
										<p id="TANGRAM__PSP_10__errorWrapper"
											class="pass-generalErrorWrapper">
											<span id="TANGRAM__PSP_10__error" class="pass-generalError pass-generalError-error"></span>
										</p>
										<p id="TANGRAM__PSP_10__MakeTextWrapper"
											class="pass-make-text" style="display: none;"></p>
										<p id="TANGRAM__PSP_10__hiddenFields" style="display: none">
											<input type="hidden" id="TANGRAM__PSP_10__codeString"
												name="codeString" value=""><input type="hidden"
												id="TANGRAM__PSP_10__safeFlag" name="safeFlag" value="0"><input
												type="hidden" id="TANGRAM__PSP_10__u" name="u"
												value="https://zhidao.baidu.com/"><input
												type="hidden" id="TANGRAM__PSP_10__isPhone" name="isPhone"
												value=""><input type="hidden"
												id="TANGRAM__PSP_10__detect" name="detect" value="1"><input
												type="hidden" id="TANGRAM__PSP_10__gid" name="gid"
												value="9E18CA6-A6F8-4CB7-B9A8-CA7353536F22"><input
												type="hidden" id="TANGRAM__PSP_10__staticPage"
												name="staticPage"
												value="https://zhidao.baidu.com/static/common/https-html/v3Jump.html"><input
												type="hidden" id="TANGRAM__PSP_10__quick_user"
												name="quick_user" value="0"><input type="hidden"
												id="TANGRAM__PSP_10__logintype" name="logintype"
												value="dialogLogin"><input type="hidden"
												id="TANGRAM__PSP_10__logLoginType" name="logLoginType"
												value="pc_loginDialog"><input type="hidden"
												id="TANGRAM__PSP_10__subpro" name="subpro" value=""><input
												type="hidden" id="TANGRAM__PSP_10__idc" name="idc" value=""><input
												type="hidden" id="TANGRAM__PSP_10__loginMerge"
												name="loginMerge" value="true">
										</p>
										<p id="TANGRAM__PSP_10__userNameWrapper"
											class="pass-form-item pass-form-item-userName"
											style="display:">
											<input type="text" style="display: none;"><input
												id="TANGRAM__PSP_10__userName" type="text" name="userName"
												class="pass-text-input pass-text-input-userName open form-input"
												autocomplete="new-password" value=""  placeholder="手机/邮箱/用户名"><span
												id="TANGRAM__PSP_10__userName_clearbtn"
												class="pass-clearbtn pass-clearbtn-userName"
												style="display: none; visibility: hidden; opacity: 1;"></span><span
												id="TANGRAM__PSP_10__userNameTip"
												class="pass-item-tip pass-item-tip-userName"
												style="display: none"><span
												id="TANGRAM__PSP_10__userNameTipText"
												class="pass-item-tiptext pass-item-tiptext-userName"></span></span>
										<ul id="TANGRAM__PSP_10__suggestionWrapper"
											class="pass-suggestion-list"
											style="display: none; visibility: hidden; opacity: 1;">
											<li class="pass-item-suggsetion" data-select="又又又是这个"
												data-type="history">又又又是这个<a data-delete="又又又是这个"
												title="删除该记录"></a></li>
										</ul>
										<span class="pass-item-selectbtn pass-item-selectbtn-userName"
											style="display: none; visibility: hidden; opacity: 1;"></span>
										</p>
										<p id="TANGRAM__PSP_10__passwordWrapper"
											class="pass-form-item pass-form-item-password"
											style="display:">
											<input type="password" style="display: none;"><input
												id="TANGRAM__PSP_10__password" type="passWord"
												name="passWord"
												class="pass-text-input pass-text-input-password form-input"
												autocomplete="new-password" value="" placeholder="密码"><span
												id="TANGRAM__PSP_10__password_clearbtn"
												class="pass-clearbtn pass-clearbtn-password"
												style="display: none;"></span><span
												id="TANGRAM__PSP_10__passwordTip"
												class="pass-item-tip pass-item-tip-password"
												style="display: none"><span
												id="TANGRAM__PSP_10__passwordTipText"
												class="pass-item-tiptext pass-item-tiptext-password" ></span></span>
										</p>
										<p id="TANGRAM__PSP_10__verifyCodeImgWrapper"
											class="pass-form-item pass-form-item-verifyCode"
											style="display: none">
											<input id="TANGRAM__PSP_10__verifyCode" type="text"
												name="verifyCode"
												class="pass-text-input pass-text-input-verifyCode"
												maxlength="6" placeholder="验证码"><span
												id="TANGRAM__PSP_10__verifyCode_clearbtn"
												class="pass-clearbtn pass-clearbtn-verifyCode"
												style="display: none;"></span><span
												id="TANGRAM__PSP_10__verifyCodeImgParent"
												class="pass-verifyCodeImgParent"><img
												id="TANGRAM__PSP_10__verifyCodeImg" class="pass-verifyCode"
												src="https://passport.baidu.com/passApi/img/small_blank.gif"></span><a
												id="TANGRAM__PSP_10__verifyCodeChange" href="#"
												class="pass-change-verifyCode">换一张</a><span
												id="TANGRAM__PSP_10__verifyCodeError"
												class="pass-error pass-error-verifyCode"></span><span
												id="TANGRAM__PSP_10__verifyCodeTip"
												class="pass-tip pass-tip-verifyCode"></span><span
												id="TANGRAM__PSP_10__verifyCodeSuccess"
												class="pass-success pass-success-verifyCode"></span>
										</p>
										<p id="TANGRAM__PSP_10__memberPassWrapper"
											class="pass-form-item pass-form-item-memberPass">
											<input id="TANGRAM__PSP_10__memberPass" type="checkbox"
												name="isFreeLogin"
												class="pass-checkbox-input pass-checkbox-memberPass"
												checked="checked"><label
												for="TANGRAM__PSP_10__memberPass"
												id="TANGRAM__PSP_10__memberPassLabel" class="" >下次自动登录</label>
										</p>
										
								
								<!-- 登录按钮 -->							
								  <p id="TANGRAM__PSP_10__submitWrapper" class="pass-form-item pass-form-item-submit">
											<input id="TANGRAM__PSP_10__submit" type="submit" value="登录"
												class="pass-button pass-button-submit"><a
												class="pass-fgtpwd pass-link"
												href="https://passport.baidu.com/?getpassindex&amp;tt=1525393262930&amp;gid=9E18CA6-A6F8-4CB7-B9A8-CA7353536F22&amp;tpl=ik&amp;u=https%3A%2F%2Fzhidao.baidu.com%2F"
												target="_blank">忘记密码？</a>
									</p>
										
										
										
										
										
									</form>
								</div>
								<div id="TANGRAM__PSP_10__qrcode"
									class="clearfix tang-pass-qrcode tang-pass-login"
									style="display: none; visibility: hidden; opacity: 1;">
									<p class="pass-form-logo">扫码登录</p>
									<div class="tang-pass-qrcode-content"
										id="TANGRAM__PSP_10__qrcodeContent">
										<div class="tang-pass-qrcode-init">
											<div
												class="Qrcode-status-con tang-pass-qrcode-imgWrapper Qrcode-animationRight"
												id="TANGRAM__PSP_10__QrcodeMain"
												style="display: block; visibility: visible; opacity: 1;">
												<img class="tang-pass-qrcode-img"
													src="https://passport.baidu.com/v2/api/qrcode?sign=dc6fb8a4521bc5ab6d5b322e8c36ac46&amp;uaonly=&amp;client_id=">
												<p class="Qrcode-status-animation"
													id="TANGRAM__PSP_10__QrcodeAnimation"></p>
											</div>
											<div class="Qrcode-status-con Qrcode-status-success"
												id="TANGRAM__PSP_10__QrcodeSuccess" style="display: none;">
												<p class="Qrcode-status-icon"></p>
												<p>扫描成功</p>
												<p class="Qrcode-status-msg">请在手机端确认登录</p>
											</div>
											<div class="Qrcode-status-con Qrcode-status-error"
												id="TANGRAM__PSP_10__QrcodeError" style="display: none;">
												<p class="Qrcode-status-icon"></p>
												<p>网络连接失败</p>
												<p class="Qrcode-refresh-btn"
													id="TANGRAM__PSP_10__QrcodeErrorfreshBtn">点击刷新</p>
											</div>
											<div class="Qrcode-status-con Qrcode-status-refresh"
												id="TANGRAM__PSP_10__QrcodeRefresh" style="display: none;">
												<p class="Qrcode-status-icon"></p>
												<p class="refresh-title refresh-timeout">二维码已失效</p>
												<p class="refresh-title refresh-loadout">二维码加载失败</p>
												<p class="Qrcode-refresh-btn"
													id="TANGRAM__PSP_10__QrcodeRefreshBtn">点击刷新</p>
											</div>
										</div>
									</div>
									<p class="tang-pass-qrcode-title">
										请使用<a class="pass-link"
											href="https://mo.baidu.com/wuxian/?from=1019447z"
											target="new">百度App</a>扫码登录
									</p>
									<ul class="tang-pass-qrcode-ullist">
										<li class="tang-pass-qrcode-list"><span
											class="tang-pass-qrcode-list-aq"></span><span>安全</span></li>
										<li class="tang-pass-qrcode-list"><span
											class="tang-pass-qrcode-list-gx"></span><span>高效</span></li>
										<li class="tang-pass-qrcode-list"><span
											class="tang-pass-qrcode-list-bj"></span><span>便捷</span></li>
									</ul>
								</div>

								<div class="tang-pass-footerBar">
									<p class="tang-pass-footerBarQrcode pass-link" title="扫码登录"
										data-type="qrcode" id="TANGRAM__PSP_10__footerQrcodeBtn"
										style="">扫码登录</p>
									<p class="tang-pass-footerBarULogin pass-link" title="用户名登录"
										data-type="normal" id="TANGRAM__PSP_10__footerULoginBtn"
										style="display: none;">用户名登录</p>
									<div class="tang-pass-footerBarPhoenix">
										<span class="tang-pass-footerBarPhoenixSplit"></span>
										<div class="tang-pass-footerBarPhoenixItem"
											id="TANGRAM__PSP_10__PhoenixItem">
											<div id="pass-phoenix-login" class="tang-pass-login-phoenix">
												<div id="pass-phoenix-list-login"
													class="pass-phoenix-list clearfix">
													<div class="pass-phoenix-btn clearfix"
														id="pass_phoenix_btn">
														<ul class="bd-acc-list">
															<li class="bd-acc-qzone" data-dialog="1" data-acc="15"
																data-height="450" data-width="750"><a
																class="phoenix-btn-item" href="#" data-title="qzone"
																title="QQ帐号">QQ帐号</a></li>
															<li class="bd-acc-tsina" data-dialog="1" data-acc="2"
																data-height="669" data-width="800"><a
																class="phoenix-btn-item" href="#" data-title="tsina"
																title="新浪微博">新浪微博</a></li>
															<li class="bd-acc-renren" data-dialog="1" data-acc="1"
																data-height="356" data-width="600"><img
																src="https://passport.baidu.com/phoenix/static/images/ico_renren.png?t=0402195"></li>
														</ul>
													</div>
												</div>
												<div class="clear"></div>
											</div>
										</div>
									</div>
									<a class="pass-reglink pass-link"
										href="https://passport.baidu.com/v2/?reg&amp;tpl=ik&amp;color=green&amp;u=https%3A//zhidao.baidu.com/question/621384845047120612.html%3Ffr%3Dqlquick%26entry%3Dqb_list_feed%26is_force_answer%3D0"
										target="_blank">立即注册</a>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



	</div>
	<input type="hidden" value="ik" id="jsProduct"> <input
		type="hidden" value="" id="jsU"> <input type="hidden"
		value="green" id="jsColor"> <input type="hidden" value=""
		id="jsSubpro"> <input type="hidden"
		value="https://zhidao.baidu.com/list?fr=daohang" id="jsNorealU">
	<input type="hidden" value="https://zhidao.baidu.com/list?fr=daohang"
		id="jsRetu"> <input type="hidden" value="1" id="jsnoUsername">
	<input type="hidden" value="" id="jsdefaultAccount"> <input
		type="hidden" value="" id="isSchoolReg"> <input type="hidden"
		value="" id="hasAuthsite">
</div>


