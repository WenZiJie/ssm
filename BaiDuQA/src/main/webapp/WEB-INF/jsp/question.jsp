<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提问_百度知道</title>
<link rel="shortcut icon" href="//www.baidu.com/favicon.ico?t=20171027"
	type="image/x-icon" />
<link rel="icon" sizes="any" mask href="//www.baidu.com/img/baidu.svg" />
<link rel="stylesheet" type="text/css"
	href="http://iknowpc.bdimg.com/static/common/pkg/common.5980733.css" />
<link rel="stylesheet" type="text/css"
	href="http://iknowpc.bdimg.com/static/common/widget/header-metis/header.5891a2d.css" />
<link rel="stylesheet" type="text/css"
	href="http://iknowpc.bdimg.com/static/new/pkg/ask.1457079.css" />
<link rel="stylesheet" type="text/css"
	href="http://iknowpc.bdimg.com/static/new/widget/question-description/question-description.62e8625.css" />
	
</head>
<body>
<body class="layout-center ask-new-layout">



	<div class="head-wrap">
		<header id="header" class="container">

		<div id="search-box" class="search-box-new line">
			<ul class="channel grid">
				<li><a log="sc_pos:c_baidu" rel="nofollow"
					href="http://www.baidu.com/">网页</a></li>
				<li><a log="sc_pos:c_news" rel="nofollow"
					href="http://news.baidu.com/">新闻</a></li>
				<li><a log="sc_pos:c_tieba" rel="nofollow"
					href="http://tieba.baidu.com/">贴吧</a></li>
				<li><strong>知道</strong></li>
				<li><a log="sc_pos:c_mp3" rel="nofollow"
					href="http://music.baidu.com/">音乐</a></li>
				<li><a log="sc_pos:c_pic" rel="nofollow"
					href="http://image.baidu.com/">图片</a></li>
				<li><a log="sc_pos:c_video" rel="nofollow"
					href="http://v.baidu.com/">视频</a></li>
				<li><a log="sc_pos:c_map" rel="nofollow"
					href="http://map.baidu.com/">地图</a></li>
				<li><a log="sc_pos:c_doc" rel="nofollow"
					href="http://wenku.baidu.com/">文库</a></li>
				<li><a log="sc_pos:c_more" href="http://www.baidu.com/more/">更多&raquo;</a></li>
			</ul>
			<div class="search-block clearfix">
				<div class="search-cont clearfix">
					<a class="logo" href="/" title="百度知道"></a>
					<form action="/search" name="search-form" method="get"
						id="search-form-new" class="search-form">
						<input class="hdi" id="kw" maxlength="256" tabindex="1" size="46"
							name="word" value="" autocomplete="off" />
						<button alog-action="g-search-anwser" type="submit"
							id="search-btn" hidefocus="true" tabindex="2" class="btn-global">搜索答案</button>
						<a href="#" alog-action="g-i-ask" class="i-ask-link"
							id="ask-btn-new">我要提问</a>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="body" class="container">


		<div class="ask-wrapper">
			<div class="ask-main-box">
				<div class="question-description f-pening" id="question-description">
					<div class="qb-layout-tit">
						<i class="iknow-ask_icons i-status-being grid mr-10"></i> <span
							class="ask-title f-pening">提问</span>
					</div>
					<div class="qd-layout">
						<div class="qd-content">
							<div class="qd-ct qd-title">
								<textarea id="title-area" placeholder="标题：写下你的问题"></textarea>
								<span id="title-count" class="count"><b>0</b>/49</span>
							</div>
						</div>
						<div id="title-error-tip" class="f-12"></div>
						<ul class="qd-content-suggestion"></ul>
						<div class="qd-content qd-content-desc">
							<div class="qd-ct qd-desc">
								<textarea id="content-area" placeholder="选填，详细说明您的问题，以便获得更好的答案"></textarea>
							</div>
							<div class="qd-plus" id="qd-plus-btn">
								<ul class="qd-plus-stuff clearfix">
									<li class="add-img webuploader-container" id="add-img-btn"><div
											class="webuploader-pick">
											<div class="clearfix add-img-ct">
												<i class="iknow-ask_icons i-add-img"></i>
											</div>
										</div>
											<div id="rt_rt_1ccqsfu0mme1768qip12t5qi01"
												style="position: absolute; top: 0px; left: 0px; width: 18px; height: 16px; overflow: hidden; bottom: auto; right: auto;">
												<input type="file" name="file" id="files"
													class="webuploader-element-invisible" accept="image/*">
												<label
													style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
										</div> 
									</li>
									<li class="add-image-intro"><i
										class="add-image-intro-circle"></i> <span>添加优质配图将会得到更多人回答</span>
									</li>
								</ul>
								<ul id="qd-img-list" class="qd-img-list clearfix"
									style="display: none"></ul>
							</div>
						</div>
						<div id="content-error-tip" class="f-12"></div>
						<div id="tag-wrapper" data-hide="doctor">
							<div id="tag-info" class="widget-tag">
								<div class="tag-container clearfix">
									<span class="tag-lb">标签：</span>
									<div class="tag-list"></div>
									<div class="add-tag-handler">
										<span class="tag-search">添加标签</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 登录后显示 -->
					<c:if test="${not empty user}">
						<div class="qd-layout qs-area">
							<ul>
								<li class="micro-msg-notice clearfix" id="phone-bar"><span
									id="phone" class="cb-ico cb-status  cb-status-on"
									data-id="phone"></span>
									<div class="remind-tip">
										收到答案到<span class="ml-10">176******34</span><a
											class="phone-num change-num-btn">修改号码</a>
									</div>
									<div class="remind-wealth remind-wealth-on" id="com">
										<i class="iknow-ask_icons i-new-wealth v-middle"></i>20
									</div>
									<div class="my-wealth grid-r">
										我的财富值：<i class="iknow-ask_icons i-new-wealth v-middle"></i><span
											class="wealth-num">75</span>
									</div></li>
								<li class="offer-reward clearfix" data-hide="doctor">
									<div class="fl rw-lb">
										<span class="cb-ico cb-status" data-id="reward"></span>答题悬赏
									</div>
									<div class="fl award-list">
										<div class="simulate-select" id="com">
											<i class="iknow-ask_icons i-new-wealth v-middle"></i><span
												class="reward-num">10</span><i
												class="iknow-ask_icons i-arrow-down-ico v-middle"></i>
										</div>
										<ul class="reward-select-list">
											<li><i></i>10</li>
											<li><i></i>20</li>
											<li><i></i>50</li>
											<li><i></i>100</li>
											<li><i></i>200</li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</c:if>
					<div class="wgt-submit">
						<div id="normail-submit-panel">
							<div class="clearfix" id="submit-panel" data-hide="doctor">
								<div id="ik-authcode-outer" style="display: none;"></div>
								<div class="submit-question">
									<button type="button" class="submit-btn doctor-submit-btn"
										id="doctor-btn" data-show="doctor">向医生提问</button>
									<button type="button" class="submit-btn disabled"
										id="submit-btn" userid="${userSession.id}"
										username="${userSession.userName}">登录提交</button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div id="anttongji"></div>

	</div>

	<footer id="footer" class="wgt-footer">
	<p>
		<a target="_blank" rel="nofollow"
			href="http://help.baidu.com/question?prod_id=9&class=337">帮助</a>
		&nbsp;|&nbsp;<a target="_blank" rel="nofollow" href="javascript:;"
			id="footer-feedback">意见反馈</a> &nbsp;|&nbsp;<a target="_blank"
			rel="nofollow"
			href="http://help.baidu.com/newadd?prod_id=9&category=1">投诉举报</a>
		&nbsp;|&nbsp;<a target="_blank" rel="nofollow"
			href="http://zhidao.baidu.com/misc/more/joinus">加入我们</a>
	</p>
	<p>
		京ICP证030173号-1&nbsp;&nbsp;&nbsp;京网文【2013】0934-983号&nbsp;&nbsp;&nbsp;&nbsp;
		&copy;2018Baidu&nbsp;&nbsp;<a rel="nofollow"
			href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;|&nbsp;<a
			rel="nofollow"
			href="http://help.baidu.com/question?prod_id=9&class=325&id=2760"
			target="_blank">知道协议</a>&nbsp;|&nbsp;<a rel="nofollow"
			href="/special/view/cooperation" target="_blank">百度知道品牌合作</a>
	</p>
	</footer>
	<div id="tier"></div>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-front dialog-tag ui-draggable"
		tabindex="-1" role="dialog"
		style="height: auto; width: 556px; top: 198px; left: 674px; display: none;"
		aria-describedby="ik-dlg-150" aria-labelledby="ui-id-2">
		<div class="ui-dialog-titlebar ui-widget-header ui-helper-clearfix">
			<span id="ui-id-2" class="ui-dialog-title">编辑标签</span>
			<button
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close"
				role="button" aria-disabled="false" title="关闭">
				<span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span
					class="ui-button-text">关闭</span>
			</button>
		</div>
		<div id="ik-dlg-150" class="ui-dialog-content ui-widget-content"
			style="display: block; width: auto; min-height: 0px; max-height: none; height: 354px;">
			<div class="selected-title f-pening" style="display: none">
				<em>当前标签</em>
			</div>
			<div class="selected-search-tag line"></div>
			<div class="selected-title f-pening">更多标签</div>
			<div class="line more-tags">
				<div class="tag-input line">
					<input type="text" placeholder="在此输入兴趣关键词" class="tag-input-ser">
				</div>
			</div>
			<p class="red-tips ff-arial"></p>
			<div class="dialog-tags-wp item-checked">
				<i class="ope-arrow-down" style="display: none;"><em></em></i>
				<div class="dialog-tags line more-tags-container"
					style="display: none;"></div>
			</div>
			<div class="dialog-tags-wp mt-15 ui-dialog-buttonset clearfix">
				<a href="javascript:void(0)" class="btn-32-green saveTo">保存</a><a
					href="javascript:void(0)" class="btn-32-white cancel">取消</a>
			</div>
			<div class="search-tag-list"></div>
		</div>
	</div>
	<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="/static/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/static/js/question.js"></script>
	<div class="modal fade" id="myModal"></div>
</body>
</html>