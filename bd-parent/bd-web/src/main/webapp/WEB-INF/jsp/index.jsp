<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--STATUS OK-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="content-type" content="text/html;charset=gbk" />
<meta property="wb:webmaster" content="3aababe5ed22e23c" />
<meta name="referrer" content="always" />
<title>问题分类_百度知道1111</title>
<script type="text/javascript" src="http://r.baiduqa.com/static/js/mustache.js">
	
</script>
<link rel="shortcut icon" href="//www.baidu.com/favicon.ico?t=20171027"
	type="image/x-icon" />
<link rel="icon" sizes="any" href="//www.baidu.com/img/baidu.svg" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css"
	href="https://iknowpc.bdimg.com/static/common/pkg/common.3fe1412.css" />
<link rel="stylesheet" type="text/css"
	href="https://iknowpc.bdimg.com/static/home/pkg/module.4060e1d.css">
<link rel="stylesheet" type="text/css"
	href="https://iknowpc.bdimg.com/static/list/pkg/module.7dd9c00.css" />
<link rel="stylesheet" type="text/css"
	href="https://iknowpc.bdimg.com/static/common/widget/header-metis/header.c851cfb.css" />
<link rel="stylesheet" type="text/css"
	href="https://ss0.bdstatic.com/5LMZfyabBhJ3otebn9fN2DJv/passApi/css/uni_loginv4_1c50fab.css"
	data-for="result">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="http://r.baiduqa.com/static/css/bootstrap.css"></script>
<script type="text/javascript"
	src="http://momentjs.cn/downloads/moment.js"></script>

<style type="text/css">
.search-box-new .hdi {
	height: 35px;
}

#tag-list-box {
	
}
/* height: auto; */
/*     width: 1000px; */
/*     top: 363px; */
/*     left: 25px; */
/*     display: block; */
</style>
</head>

<body class="layout-center">
	<!-- 登陆模态框 -->
	<%@ include file="/WEB-INF/jsp/common/loginModal2.jsp"%>


	<!--  标签遮罩层 -->
	<div class="ui-widget-overlay ui-front" id="tag-list-block"
		style="display: none"></div>

	<!-- 标签弹出框开始 -->
	<div
		class="ui-dialog ui-widget ui-widget-content ui-front tag-setup-dialog ui-dialog-buttons ui-draggable"
		id="tag-list-box" tabindex="-1" role="dialog"
		style="height: auto; width: 1000px; top: 215px; left: 198px; display: none;"
		aria-describedby="ik-dlg-279" aria-labelledby="ui-id-3">
		<!-- 我的兴趣 -->
		<div class="ui-dialog-titlebar ui-widget-header ui-helper-clearfix">
			<span id="ui-id-3" class="ui-dialog-title">我的兴趣</span>
			<button
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close"
				role="button" aria-disabled="false" title="关闭">
				<span
					class="ui-button-icon-primary ui-icon ui-icon-closethick close-tag-box"></span><span
					class="ui-button-text">关闭</span>
			</button>
		</div>

		<div id="ik-dlg-279" class="ui-dialog-content ui-widget-content"
			style="display: block; width: auto; min-height: 0px; max-height: none; height: 421px;">
			<!-- 模态框的头部 -->
			<div class="dialog-setup-box line">
				<div class="dialog-setup-header line">
					<input type="text" class="filter-input" placeholder="请输入标签">
					<button class="filter-btn btn-green-darker" type="button">搜索兴趣</button>
					<button type="button" class="filter-btn-all">查看全部标签</button>
				</div>

				<!-- 模态框左边部分 -->
				<div class="dialog-selecting-box line">

					<div class="selecting-box-title">
						<!--点击一级分类时 .show-selected -->
						<div class="title-select-wrap">
							<!-- 全部分类按钮 -->
							<div class="dialog-change-class">
								<!--  鼠标移入  全部分类      显示所有一级分类-->
								<span class="all-class"> <span class="class-name">全部分类
								</span> <span class="class-open"></span>
								</span>
							</div>

							<div class="current-class">
								<span class="class-direction"></span> <span
									class="current-class-name-text"></span>
							</div>
							<!-- 移入全部分类   在这个位置显示   显示所有一级分类-->
							<ul class="level-1-class">
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="101"> 经济金融 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="102"> 企业管理 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="103"> 法律法规 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="104"> 社会民生 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="105"> 科学教育 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="106"> 健康生活 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="107"> 体育运动 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="108"> 文化艺术 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="109"> 电子数码 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="110"> 电脑网络 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="111"> 娱乐休闲 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="113"> 地区 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="114"> 心理分析 </a></li>
								<li class="sub-class-item"><a class="sub-class-item-link"
									href="javascript:;" data-cid="115"> 医疗卫生 </a></li>
							</ul>
						</div>

						<div class="back-level-1-select btn-green-darker-xs" style="">&lt;返回
						</div>
					</div>

					<!-- 标签模态框的主体开始-->
					<!-- 点击搜索兴趣  style="opacity: 0; display: none;" -->
					<div class="select-box-content box-type-1 "
						style="opacity: 1; display: block;*/">
						<table class="level-1-class-table">
							<tbody>
								<tr class="">
									<td class="level-1-class-item" data-cid="101">经济金融</td>
									<td class="level-1-class-item" data-cid="102">企业管理</td>
									<td class="level-1-class-item" data-cid="103">法律法规</td>
								</tr>
								<tr class="">
									<td class="level-1-class-item" data-cid="104">社会民生</td>
									<td class="level-1-class-item" data-cid="105">科学教育</td>
									<td class="level-1-class-item" data-cid="106">健康生活</td>
								</tr>
								<tr class="">
									<td class="level-1-class-item" data-cid="107">体育运动</td>
									<td class="level-1-class-item" data-cid="108">文化艺术</td>
									<td class="level-1-class-item" data-cid="109">电子数码</td>
								</tr>
								<tr class="">
									<td class="level-1-class-item" data-cid="110">电脑网络</td>
									<td class="level-1-class-item" data-cid="111">娱乐休闲</td>
									<td class="level-1-class-item" data-cid="113">地区</td>
								</tr>
								<tr class="">
									<td class="level-1-class-item" data-cid="114">心理分析</td>
									<td class="level-1-class-item" data-cid="115">医疗卫生</td>
									<td class="level-1-class-item" data-cid=""></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 标签模态框的主体结束-->

					<!-- 点击一级分类后,显示二级分类 -->
					<!-- display: block; opacity:1; -->
					<div class="select-box-content box-type-2"
						style="display: none; opacity: 0;">
						<!-- 二级分类左边部分 -->
						<div class="dialog-cate-wrapper" style="width: 139px;">
							<div class="dialog-cate">
								<ul>
									<li class="level-2-class" data-cid="102100">企业管理</li>
									<li class="level-2-class current" data-cid="102101">人力资源</li>
									<li class="level-2-class" data-cid="102102">财务</li>
									<li class="level-2-class" data-cid="102103">市场营销</li>
									<li class="level-2-class" data-cid="102104">创业</li>
									<li class="level-2-class" data-cid="102105">融资</li>
								</ul>
							</div>
						</div>

						<!-- 二级分类中间部分 -->
						<div class="dialog-tag-list filter-tag-list" style="width: 480px;">
							<ul class="line">
								<li class="waiting-selecting-tag tag-item">管理咨询</li>
								<li class="waiting-selecting-tag tag-item">绩效考核</li>
								<li class="waiting-selecting-tag tag-item">考勤</li>
								<li class="waiting-selecting-tag tag-item">劳动合同</li>
								<li class="waiting-selecting-tag tag-item">离职</li>
								<li class="waiting-selecting-tag tag-item">企业文化</li>
								<li class="waiting-selecting-tag tag-item">人才管理</li>
								<li class="waiting-selecting-tag tag-item">人力资源</li>
								<li class="waiting-selecting-tag tag-item">人力资源管理</li>
								<li class="waiting-selecting-tag tag-item">人事</li>
								<li class="waiting-selecting-tag tag-item">升职加薪</li>
								<li class="waiting-selecting-tag tag-item">薪资福利</li>
								<li class="waiting-selecting-tag tag-item">行政管理</li>
								<li class="waiting-selecting-tag tag-item">招聘</li>
								<li class="waiting-selecting-tag tag-item">招聘面试</li>
								<li class="waiting-selecting-tag tag-item">职称评审</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 模态框右边部分 -->
				<!--显示二级分类后    点击三级标签后,添加到这里 -->
				<div class="tag-selected-box">
					<h2 class="selected-tag-title">
						<span class="title-text"> 我的标签 </span> <span class="title-extra">
							直接拖动改变标签顺序 </span>
					</h2>
					<!-- 右边我的标签 -->
					<div class="tag-selected-list dialog-tag-list">
						<ul class="line selected-tag-list ui-sortable" style="top: 221px;">
							<li class="tag-item dialog-selected-tag-item ui-sortable-handle">招聘面试
								<em class="del del-my-tag"></em>
							</li>
							<li class="tag-item dialog-selected-tag-item ui-sortable-handle">人力资源管理
								<em class="del del-my-tag"></em>
							</li>
							<li class="tag-item dialog-selected-tag-item ui-sortable-handle">行政管理
								<em class="del del-my-tag"></em>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"
			style="text-align: center;">
			<div class="ui-dialog-buttonset">
				<a href="#" class="btn-32-green dialog-btn dialog-btn-1">确定</a><a
					href="#" class="btn-32-white dialog-btn dialog-btn-2 close-tag-box">取消</a>
			</div>
		</div>
	</div>




	<div id="userbar" class="userbar userbar-renew" data=""
		style="width: auto; left: auto; right: 13px; display: block;">
		<ul class="aside-list">
			<li><a href="/user/" class="toindex">问题首页</a></li>
			<c:choose>
				<c:when test="${empty userSession}">
					<li><a rel="nofollow" alog-alias="usrbar-login"
						href="javascript:;" id="userbar-login"
						log="type:2026,pname:account,mod:login,action:show,pos:pop">登录</a>
					</li>
				</c:when>
				<c:otherwise>
					<li id="showuser"><a rel="nofollow" alog-alias="usrbar-login"
						id="user-name"
						log="type:2026,pname:account,mod:login,action:show,pos:pop">${userSession.userName}</a>
						<a href="/ihome" class="user-name" target="_blank" id="user-name">
							<i class="i-arrow-down"></i>
					</a></li>
				</c:otherwise>
			</c:choose>
			<li><a rel="nofollow" alog-alias="usrbar-reg" id="userbar-reg"
				href="/user/register" target="_blank">注册</a></li>
		</ul>
		<div class="sublist-container username-sublist"
			style="left: 45px; display: none;" id="username-sublist">
			<div class="sublist-arrow-up"></div>
			<ul class="sub-list">
				<li class=""><a id="userbar-myinfo" href="javascript:void(0);"
					target="_blank" class="">我的主页</a></li>
				<li class=""><a id="userbar-my-ask" href="javascript:void(0);"
					target="_blank" class="">我的提问</a></li>
				<li><a id="userbar-my-answer" href="javascript:void(0);"
					target="_blank">我的回答</a></li>
				<li><a id="userbar-my-task" href="javascript:void(0);"
					target="_blank">我的任务</a></li>
				<li><a id="userbar-account" href="javascript:void(0);"
					target="_blank">帐号设置</a></li>
				<li class="last"><a id="userbar-logout">退出帐号</a></li>
			</ul>
		</div>
		<script type="text/javascript">
			$("#showuser").hover(function() {
				$(".sublist-container").show();
			}, function() {
				$(".sublist-container").hide();
			});
			$(".sublist-container").hover(function() {
				$(".sublist-container").show();
			}, function() {
				$(".sublist-container").hide();
			});
		</script>
	</div>








	<div class="head-wrap">
		<hr class="divider">
		<!-- 头部导航栏开始 -->
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

			<!-- 搜索答案和我要提问开始 -->
			<div class="search-block clearfix">
				<div class="search-cont clearfix">
					<a class="logo" href="/" title="百度知道"></a>
					<form action="/search" name="search-form" method="get"
						id="search-form-new" class="search-form">
						<!-- 搜索答案 -->
						<input class="hdi" style="height: 20px;" id="kw" maxlength="256"
							tabindex="1" size="46" name="word" value="" autocomplete="off" />
						<button alog-action="g-search-anwser" type="submit"
							id="search-btn" hidefocus="true" tabindex="2" class="btn-global">搜索答案</button>
						<!-- 我要提问 -->
						<a href="#" alog-action="g-i-ask" class="i-ask-link"
							id="ask-btn-new">我要提问</a>
					</form>
				</div>
			</div>
			<!-- 搜索答案和我要提问开始 -->
		</div>
		</header>
		<!-- 头部导航栏结束 -->
	</div>




	<!-- 绿色导航栏开始 -->
	<div class="nav-menu-container" id="j-nav-menu-container">
		<div class="nav-show-control">
			<div class="nav-menu-layout">
				<div class="nav-menu line">
					<div class="nav-menu-content container">
						<div class="content-box">
							<div class="menu-item menu-item-index">
								<a class="menu-title " href="/"> 首页</a>
							</div>
							<div class="menu-item-box">
								<div class="menu-item menu-item-cat">
									<a class="menu-title current" href="/list?fr=daohang"
										target="_blank"> 问题</a>
									<div class="menu-content">
										<ul class="menu-sub-list">
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?fr=daohang" target="_blank" target="_blank">
													全部问题</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=101&fr=daohang" target="_blank"
												target="_blank"> 经济金融</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=102&fr=daohang" target="_blank"
												target="_blank"> 企业管理</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=103&fr=daohang" target="_blank"
												target="_blank"> 法律法规</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=104&fr=daohang" target="_blank"
												target="_blank"> 社会民生</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=105&fr=daohang" target="_blank"
												target="_blank"> 科学教育</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=106&fr=daohang" target="_blank"
												target="_blank"> 健康生活</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=107&fr=daohang" target="_blank"
												target="_blank"> 体育运动</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=108&fr=daohang" target="_blank"
												target="_blank"> 文化艺术</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=109&fr=daohang" target="_blank"
												target="_blank"> 电子数码</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=110&fr=daohang" target="_blank"
												target="_blank"> 电脑网络</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=111&fr=daohang" target="_blank"
												target="_blank"> 娱乐休闲</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=113&fr=daohang" target="_blank"
												target="_blank"> 行政地区</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=114&fr=daohang" target="_blank"
												target="_blank"> 心理分析</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/list?cid=115&fr=daohang" target="_blank"
												target="_blank"> 医疗卫生</a></li>
										</ul>
									</div>
								</div>
								<div class="menu-item menu-item-lanmu">
									<a class="menu-title" href="javascript:;"> 精选</a>
									<div class="menu-content">
										<ul class="menu-sub-list">
											<li class="menu-sub-item-wp"><a
												class="menu-sub-item column-sub-item"
												href="/special/column?fr=daohang" target="_blank"> 知道专栏</a>
											</li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/daily?fr=daohang" target="_blank"> 知道日报</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/bigdata/view" target="_blank"> 知道大数据</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/culture/index?fr=daohang" target="_blank"> 知道非遗</a></li>
										</ul>
									</div>
								</div>
								<div class="menu-item menu-item-user">
									<a class="menu-title" href="javascript:;"> 用户
										<div class="menu-title-icon">
											<i class="iknow-icons">&#xe715;</i>
										</div>
									</a>
									<div class="menu-content">
										<ul class="menu-sub-list">
											<li class="menu-sub-itemline-wp"><a
												class="menu-sub-item metis-sub-item"
												href="/home/partnerhome?fr=daohang" target="_blank">
													知道合伙人（内测）
													<div class="menu-title-icon">
														<i class="iknow-icons">&#xe715;</i>
													</div>
											</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/uteam?fr=daohang" target="_blank"> 芝麻团</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/user/admin?fr=daohang" target="_blank"> 芝麻将</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/hangjia?fr=daohang" target="_blank"> 知道行家</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/daily/authorcenter?fr=daohang" target="_blank">
													日报作者</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/misc/nowshowstar?fr=daohang" target="_blank">
													知道之星</a></li>
											<div class="menu-item-user-list">
												机构合作
												<div class="line-bar"></div>
											</div>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/hangjia?fr=daohang" target="_blank"> 机构行家</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/opendev?fr=daohang" target="_blank"> 开放平台</a></li>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/special/view/cooperation?fr=daohang" target="_blank">
													品牌合作</a></li>
											<div class="menu-item-user-list">
												知道福利
												<div class="line-bar"></div>
											</div>
											<li class="menu-sub-item-wp"><a class="menu-sub-item"
												href="/shop?fr=daohang" target="_blank"> 财富商城</a></li>
										</ul>
									</div>
								</div>
								<div class="menu-item menu-item-expert">
									<a class="menu-title" href="javascript:;"> 特色</a>
									<div class="menu-content">
										<ul class="menu-sub-list">
											<li class="menu-sub-item-wp"><a
												class="menu-sub-item menu-sub-item-expert"
												href="http://jingyan.baidu.com/" target="_blank"> <span
													class="expert-icon expert-icon-jy"></span> <span>经验</span>
											</a></li>
											<li class="menu-sub-item-wp"><a
												class="menu-sub-item menu-sub-item-expert"
												href="https://baobao.baidu.com" target="_blank"> <span
													class="expert-icon expert-icon-baby"></span> <span>宝宝知道</span>
											</a></li>
											<li class="menu-sub-item-wp"><a
												class="menu-sub-item menu-sub-item-expert"
												href="https://www.zybang.com" target="_blank"> <span
													class="expert-icon expert-icon-zuoye"></span> <span>作业帮</span>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="menu-right-section">
								<ul class="menu-right-list">
									<li class="menu-right-list-item zhidao-app"><a
										href="/activity/simpleindexact?tplName=nareplace&type=pc"
										class="menu-right-list-link" target="_blank"> <span
											class="item-icon"> </span> <span class="item-name">
												手机版</span>
									</a> <span class="right-list-item-devide"> </span></li>
									<li class="menu-right-list-item user-center"><a
										href="/ihome" class="menu-right-list-link" target="_blank">
											<span class="item-icon"> </span> <span class="item-name">
												我的知道</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 绿色导航栏结束 -->





	<!-- 主体内容开始 -->
	<div id="body" class="container">

		<!-- 全部问题 -->
		<section class="crumbs-widget-wp container">
		<div class="crumbs-list-wgt">

			<!-- 标签的分类筛开始 -->
			<ul class="crumbs-list">
				<!-- 一级分类开始 -->
				<!-- 移入一级标签时,删除.last-crumbs-item  追加.show-sub -->
				<li class="crumbs-item last-crumbs-item">
					<ul class="sub-crumbs sub-crumbs-level-0 sub-crumbs-cid-">
						<li class="sub-crumbs-item sub-crumbs-item-0"><a
							class="sub-crumbs-item-link" href="/list?cid=101"> 经济金融 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-1"><a
							class="sub-crumbs-item-link" href="/list?cid=102"> 企业管理 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-2"><a
							class="sub-crumbs-item-link" href="/list?cid=103"> 法律法规 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-0"><a
							class="sub-crumbs-item-link" href="/list?cid=104"> 社会民生 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-1"><a
							class="sub-crumbs-item-link" href="/list?cid=105"> 科学教育 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-2"><a
							class="sub-crumbs-item-link" href="/list?cid=106"> 健康生活 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-0"><a
							class="sub-crumbs-item-link" href="/list?cid=107"> 体育运动 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-1"><a
							class="sub-crumbs-item-link" href="/list?cid=108"> 文化艺术 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-2"><a
							class="sub-crumbs-item-link" href="/list?cid=109"> 电子数码 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-0"><a
							class="sub-crumbs-item-link" href="/list?cid=110"> 电脑网络 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-1"><a
							class="sub-crumbs-item-link" href="/list?cid=111"> 娱乐休闲 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-2"><a
							class="sub-crumbs-item-link" href="/list?cid=113"> 地区 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-0"><a
							class="sub-crumbs-item-link" href="/list?cid=114"> 心理分析 </a> <span
							class="crumbs-boder"> </span></li>
						<li class="sub-crumbs-item sub-crumbs-item-1"><a
							class="sub-crumbs-item-link" href="/list?cid=115"> 医疗卫生 </a> <span
							class="crumbs-boder"> </span></li>
					</ul> <!-- 全部问题 --> <span class="cur-crumbs last-crumbs"
					id="all-question"> <span class="crumbs-border"></span> <!--     移入移出,显示所有一级分类 -->
						<a class="crumbs-name" href="/index"> 全部问题</a> <span
						class="crumbs-border"></span> <span class="cur-crumbs-cover"></span>
				</span>
				</li>
				<!-- 一级分类结束 -->

				<!-- 二级分类 开始-->
				<!-- 如果一级标签存在 -->
				<c:if test="${tagList.size()>0}">
					<li class="crumbs-item"><span class="crumbs-direction"></span>
						<ul class="sub-crumbs sub-crumbs-level-1 sub-crumbs-cid-101">
							<c:forEach items="${tagList}" var="tag">
								<li class="sub-crumbs-item sub-crumbs-item-0"><a
									class="sub-crumbs-item-link"
									href="/tag/list?tagPath=${tag.tagPath}">${tag.tagName}</a> <span
									class="crumbs-boder"> </span></li>
							</c:forEach>
						</ul> <span class="cur-crumbs "> <span class="crumbs-border"></span>
							<a class="crumbs-name" href="/list?cid=101" id="tag-level-2-name">${currentTag.tagName}</a>
							<span class="open-crumbs"></span> <span class="crumbs-border"></span>
							<span class="cur-crumbs-cover" style="width: 90px;"></span>
					</span></li>
				</c:if>
			</ul>
			<!-- 标签的分类筛选结束 -->

			<p class="question-count">
				共<span class="count-num">760</span>个问题
			</p>
		</div>
		</section>
		<script type="text/javascript">
			//移入移出标签时
			var liLength = $('.crumbs-list .crumbs-item').length;

			if (liLength > 1) {
				$("#all-question").removeClass('last-crumbs');

				$(".crumbs-list .crumbs-item").hover(function() {
					//移入时
					$(this).addClass('show-sub');
				}, function() {
					var liLength = $('.crumbs-list .crumbs-item').length;
					//移出时
					$(this).removeClass('show-sub');

				});
			}
		</script>


		<!-- 问题全部分类 开始-->
		<section class="tag-all-view-widget-wp container">
		<div class="tag-view-list-wgt level-0">
			<div class="tag-view-list-layout">
				<ul class="tag-view-list">
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=101" class="tag-name-link"> 经济金融 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=102" class="tag-name-link"> 企业管理 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=103" class="tag-name-link"> 法律法规 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=104" class="tag-name-link"> 社会民生 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=105" class="tag-name-link"> 科学教育 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=106" class="tag-name-link"> 健康生活 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/tag/list?tagPath=/2/" class="tag-name-link"> 体育运动
								</a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=108" class="tag-name-link"> 文化艺术 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=109" class="tag-name-link"> 电子数码 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/tag/list?tagPath=/1/" class="tag-name-link"> 电脑网络
								</a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=111" class="tag-name-link"> 娱乐休闲 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=113" class="tag-name-link"> 地区 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=114" class="tag-name-link"> 心理分析 </a>
							</p>
						</div>
					</li>
					<li class="view-list-item">
						<div class="tag-content">
							<p class="tag-name">
								<a href="/list?cid=115" class="tag-name-link"> 医疗卫生 </a>
							</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
		</section>
		<!-- 问题全部分类结束-->


		<!-- 我的兴趣开始 -->
		<section class="interest-widget-wp container">
		<div class="interest-wgt">
			<div class="interest-title">我的兴趣：</div>
			<div class="interest-list">
				<a href="javascript:;"
					class="interest-item interest-item-all interest-item-action"
					data-tag="" style="display: none;"> 全部</a> <a href="javascript:;"
					class="interest-item add-interest" id="open-tag-list">+</a>
			</div>
			<div class="interest-operate close" style="display: none;">
				<span class="operate-text"> 展开</span> <span
					class="operate-direction"></span>
			</div>
		</div>


		</section>
		<!-- 我的兴趣结束 -->



		<section class="list-section-widget-wp container">
		<div class="question-list-wgt">
			<div class="question-list-nav">
				<ul class="nav-list">
					<!-- 新问题 -->
					<li class="nav-item cur"><a href="javascript:void(0);"
						id="default" class="nav-link nav-pjax-btn" data-type="default">
							新提问</a></li>
					<!-- 新讨论 -->
					<li class="nav-item "><a href="javascript:void(0);"
						id="highScore" class="nav-link nav-pjax-btn" data-type="highScore">
							高悬赏</a></li>
					<!-- 热门提问 -->
					<li class="nav-item  "><a href="javascript:void(0);" id="hot"
						class="nav-link nav-pjax-btn" data-type="hot"> 热门提问</a> <span
						class="hot"> </span></li>
					<!-- 神讨论 -->
					<li class="nav-item "><a href="javascript:void(0);" id="feed"
						class="nav-link nav-pjax-btn" data-type="feed"> 神讨论</a> <spanclass="hot">
						</span></li>
				</ul>
				<div class="extra-nav">
					<a href="/team" target="_blank" class="extra-item"> <span
						class="item-logo"> </span> 团队答题
					</a>
				</div>
			</div>

			<!-- 	按关键字搜索问题开始 -->
			<div class="question-list-update">
				<div class="update-operate-sec">
					<!-- 筛选 -->
					<div class="search-operate">
						<input type="text" placeholder="按关键词筛选" class="search-text">
						<a href="javascript:;" class="goto-search">筛选</a>
					</div>
					<!-- 刷新-->
					<div class="refresh-operate">
						<a href="javascript:;" class="refresh-btn"> <span
							class="refresh-logo"></span> 刷新
						</a>
					</div>
				</div>
			</div>
			<!-- 	按关键字搜索问题结束-->


			<!-- 问题列表开始 -->
			<div id="j-question-list-pjax-container">
				<div class="question-list-content">
						<script id="template" type="x-tmpl-mustache">
						{{#list}}
						<li class="question-list-item" data-qid="1708602533316536940"
							data-cid="75"><div class="question-title-section">
								<div class="question-title">
									<a href="/question/{{id}}" class="title-link" target="_blank">{{title}}</a>
								</div>
								<div class="question-tags">
									<span class="tag-logo"></span> <a class="tag-item"
										target="_blank" href="#">{{questionTag}}</a>&nbsp;
								</div>
								<div class="question-info">
									<div class="answer-num">{{replyCount}}回答</div>
									<div class="question-time">{{submitterTime}}</div>
								</div>
							</div></li>
							{{/list}}
					</script>
					<ul class="question-list-ul">


					</ul>
				</div>
			</div>
			<!-- 问题列表结束 -->



			<!-- 分页开始 -->
			<div class="pager question-list-pager"></div>
			<!-- 分页结束 -->
		</div>
		</section>

	</div>
	<!-- 主题内容结束 -->

	<!-- 尾部导航栏开始 -->
	<div class="wgt-footer-new">
		<div class="footer-wp">
			<ul class="footer-list clearfix">
				<li class="footer-list-item footer-list-guide">
					<div class="footer-title">
						<span class="icon-guide"></span>新手帮助
					</div>
					<ul class="footer-link clearfix">
						<li><a
							href="http://help.baidu.com/question?prod_en=zhidao&class=320&id=1525"
							target="_blank">如何答题</a></li>
						<li><a
							href="http://help.baidu.com/question?prod_id=9&class=320&id=1526"
							target="_blank">获取采纳</a></li>
						<li><a
							href="http://help.baidu.com/question?prod_id=9&class=337&id=1513"
							target="_blank">使用财富值</a></li>
					</ul>
				</li>
				<li class="footer-list-item footer-list-intro">
					<div class="footer-title">
						<span class="icon-intro"></span>玩法介绍
					</div>
					<ul class="footer-link clearfix">
						<li><a href="/shop" target="_blank">知道商城</a></li>
						<li><a
							href="http://zhidao.baidu.com/pcs/zhimatuan/index.html"
							target="_blank">知道团队</a></li>
						<li><a href="/hangjia" target="_blank">行家认证</a></li>
						<li><a href="http://zhidao.baidu.com/s/hi-quality/index.html"
							target="_blank">高质量问答</a></li>
					</ul>
				</li>
				<li class="footer-list-item footer-list-sug">
					<div class="user-tip" id="js-footer-user-tip"
						style="display: none;">
						<p class="title">您的帐号状态正常</p>
						<p class="desc">感谢您对我们的支持</p>
					</div>
					<div class="footer-title">
						<span class="icon-sug"></span>投诉建议
					</div>
					<ul class="footer-link clearfix">
						<li><a href="javascript:;"
							log="module:common,action:click,area:footer_feedback"
							target="_blank" id="footer-feedback">意见反馈</a></li>
						<li><a href="/misc/appeal"
							log="module:common,action:click,area:footer_appeal"
							target="_blank" id="js-footer-appeal">账号申诉</a></li>
						<li><a href="http://ikefu.baidu.com/web/zhishisousuo#"
							log="module:common,action:click,area:footer_consult"
							target="_blank">智能咨询</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="footer-new">
			<p class="jt1128">
				京ICP证030173号-1&nbsp;&nbsp;&nbsp;京网文【2013】0934-983号&nbsp;&nbsp;&nbsp;&nbsp;
				&copy;2018Baidu&nbsp;&nbsp;<a rel="nofollow"
					href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
					rel="nofollow"
					href="http://help.baidu.com/question?prod_id=9&class=325&id=2760"
					target="_blank">知道协议</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow"
					href="/special/view/cooperation" target="_blank">百度知道品牌合作</a>
			</p>
		</div>
	</div>
	<!-- 绿色导航栏结束-->


	<script type="text/javascript" src="http://r.baiduqa.com/static/js/index.js"></script>
	<script type="text/javascript" src="http://r.baiduqa.com/static/js/bootstrap.js"></script>
</body>

</html>
