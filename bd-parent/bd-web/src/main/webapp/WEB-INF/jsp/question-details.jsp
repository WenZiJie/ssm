<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta property="wb:webmaster" content="3aababe5ed22e23c"/>
    <meta name="referrer" content="always"/>
    <title>${question.title}</title>
    <link rel="shortcut icon" href="//www.baidu.com/favicon.ico?t=20171027" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="https://ss0.bdstatic.com/5LMZfyabBhJ3otebn9fN2DJv/passApi/css/uni_loginv4_1c50fab.css" data-for="result">
    <link rel="icon" sizes="any" mask="" href="//www.baidu.com/img/baidu.svg"/>
    <script async="" src="https://fex.bdstatic.com/hunter/alog/dp.min.js?v=-17658-17658" type="text/javascript"></script>
<!--     <script charset="utf-8" async="" src="//pos.baidu.com/bfp/snippetcacher.php?dpv=af1b09521ead42c4&amp;di=968278" type="text/javascript"></script> -->
<!--     <script charset="utf-8" async="" src="//pos.baidu.com/bfp/snippetcacher.php?dpv=95ff4a4634485f07&amp;di=2598853" type="text/javascript"></script> -->
<!--     <script type="text/javascript" async="" src="https://pos.baidu.com/gcxm?di=968278&amp;dri=0&amp;dis=0&amp;dai=0&amp;ps=642x1067&amp;enu=encoding&amp;dcb=___adblockplus&amp;dtm=SSP_JSONP&amp;dvi=0.0&amp;dci=-1&amp;dpt=none&amp;tsr=0&amp;tpr=1525572238894&amp;cop=zdclassid%3D197%26zhidaoqid%3D500499341353007004&amp;ti=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;ari=2&amp;dbv=2&amp;drs=3&amp;pcs=1584x604&amp;pss=1584x2114&amp;cfv=0&amp;cpl=4&amp;chi=1&amp;cce=true&amp;cec=GBK&amp;tlm=1525572239&amp;prot=2&amp;rw=604&amp;ltu=https%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004.html%3Ffr%3Dqlquick%26entry%3Dqb_list_feed%26is_force_answer%3D0&amp;ltr=https%3A%2F%2Fzhidao.baidu.com%2Flist%3Ftype%3Dfeed&amp;lcr=https%3A%2F%2Fwww.sogou.com%2Flink%3Furl%3D44aejrzSKwXnIIljYInpjGXH0kc1pIdireaVHN88tHY.&amp;ecd=1&amp;uc=1920x1040&amp;pis=-1x-1&amp;sr=1920x1080&amp;tcn=1525572239"></script> -->
    <script src="https://hm.baidu.com/hm.js?6859ce5aaf00fb00387e6434e4fcc925" type="text/javascript"></script>
    <script async="" src="https://fex.bdstatic.com/hunter/alog/alog.min.js?v=-17658-17658" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/pkg/common.62e388c.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/widget/header-metis/header.c851cfb.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/widget/top-nav-bar/top-nav-bar.d434cb6.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/pkg/aio.9c76d3e.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/widget/read-opt/img-preview/preview.c4405d5.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/widget/bottom-union/bottom-union.e6e19de.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/widget/mask/mask.a8f442e.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/question/widget/view/accusation/accusation.1a08386.css"/>
    <link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/widget/upgrade-tips/upgrade-tips.02cec46.css"/>
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/more.d4bc6a6.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/top-nav-bar/top-nav-bar.addb9dd.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/ask/pc-exp/ask-img.60c4015.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/read-opt/img-preview/preview.6faca97.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/pkg/login.eb014bd.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/link-union/link-union.6b28d66.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/mask/mask.es.7e867d7.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/view/accusation/accusation.es.ae2fbf7.js"></script> -->
<!--     <script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/js/video/video.fd48204.js"></script> -->
<!--     <script charset="GBK" src="https://entry.baidu.com/rp/wordner?di=u2146910&amp;id=answer-content-2797506583%2Canswer-content-2793429955%2Canswer-content-2788920345%2Canswer-content-2778650238%2Canswer-content-2732666072&amp;user=zhidao&amp;logid=111&amp;sid=&amp;isMobile=false&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;page_url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004&amp;classname=baidu-highlight&amp;ignore=baidu-gh-highlight-no&amp;frequency=3&amp;maxword=10&amp;jsonp=baidu_hh_1525572239985&amp;r_new=true&amp;mobile=true" type="text/javascript"></script> -->
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    
    <style type="text/css">
        .ec-ad {margin-left: -10px;padding-top: 5px;padding-bottom: 12px;}
        .ec-ad .ec-row-title .ec-title {font: normal 14px/34px 'Microsoft YaHei';padding-left: 10px;color: #666;}
        .ec-ad .ec-img-list {font-size: 0;}
        .ec-ad .ec-img-list .ec-img-item {width: 83px;display: inline-block;font-size: 12px;margin-left: 10px;vertical-align: top;}
        .ec-ad .ec-img {vertical-align: top;}
        .ec-ad .ec-img-desc {margin-top: 7px;text-align: center;color: #2d64b3;display: block;font-size: 12px;line-height: 18px;}
    </style>
    
    <style type="text/css">
        .ec-ad .ec-row-title .ec-title {
            padding-left: 0;
        }
        .ec-ad .ec-img-list {
            width: 290px;
        }
        .ec-ad .ec-img-list .ec-img-item {
            margin-left: 0;
            margin-right: 10px;
        }
        #wgt-ask{
        padding-top: 40px;
    	overflow: visible;
        }
        
       
    #show-answer-hide:hover{
      color: red;
    }
    
    .comment-area .comment-entry {
    border-bottom: 1px solid #e8ecee;
}

.mini-editor textarea {
   color: black;
}
    </style>
</head>

<body class="layout-center has-menu" style="">

 <!-- 登陆模态框 -->
  <%@ include file="/WEB-INF/jsp/common/loginModal2.jsp" %>

<div id="BAIDU_DUP_fp_wrapper" style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;">
    <iframe id="BAIDU_DUP_fp_iframe" src="https://pos.baidu.com/wh/o.htm?ltr=" style="width: 0px; height: 0px; visibility: hidden; display: none;">
    </iframe>
</div>

	<div id="userbar" class="userbar userbar-renew" data="">
		<ul class="aside-list">
			<li>
			    <a href="http://www.baidu.com/" class="toindex">百度首页</a>
			</li>
		
		<%-- 如果登陆状态为空  显示 登陆,注册 --%>	
		<c:if test="${userSession==null}">
			<!-- 登陆 -->
			<li>
				<a rel="nofollow" alog-alias="usrbar-login" href="#"  id="userbar-login" log="type:2026,pname:account,mod:login,action:show,pos:pop"  href=""  >登录</a>
			</li>
			<!-- 注册 -->
			<li>
			    <a rel="nofollow" alog-alias="usrbar-reg" id="userbar-reg" target="_blank">注册</a>
			</li>
		</c:if>
		
			
		<%-- 如果用户的登陆状态不为空,显示用户中心,用户消息--%>
		<c:if test="${userSession!=null}">
			<!-- 用户中心 -->
			<li>
				<a href="/ihome" class="user-name" target="_blank" id="user-name">${userSession.userName}<i class="i-arrow-down"></i></a>
			</li>
			
			<!-- 用户消息 -->
	  <li alog-alias="userbar-msg" id="userbar-msg">
		<a class="userbar-msg-a" href="/ihome/notice/center" target="_blank">消息<span class="orange-num">(<i>1</i>) </span></a>
	     <div class="nav-msg-layout" style="display: none;">
			<div class="nav-msg-tri"></div>
			<div class="msg-content-wp">
				<div class="scroll-wrapper msg-list-wp scrollbar-inner"
					style="position: relative;">
					<div class="msg-list-wp scrollbar-inner scroll-content"
						style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 48px;">
						<div class="msg-list-content single-list">
							<div class="nav-msg-listitem" data-id="979039648"
								data-type="4000">
								<p class="msgsys-p-line">
									<a href="/ihome/notice/center?type=system" target="_blank"
										class="msg-link">您有一条新消息，去查看&gt;&gt;</a>
								</p>
							</div>
						</div>
					</div>
					<div class="scroll-element scroll-x">
						<div class="scroll-element_outer">
							<div class="scroll-element_size"></div>
							<div class="scroll-element_track"></div>
							<div class="scroll-bar" style="width: 100px;"></div>
						</div>
					</div>
					<div class="scroll-element scroll-y">
						<div class="scroll-element_outer">
							<div class="scroll-element_size"></div>
							<div class="scroll-element_track"></div>
							<div class="scroll-bar" style="height: 100px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="msg-show-all">
				<a href="" target="_blank">查看全部</a>
			</div>
		</div>
		</li>
	</c:if>
	
	<!-- 商城 -->
			<li class="shop-entrance"><a href="/shop" title="知道商城" log="type:2026,pos:top-right,target:shop-entrance">商城<i
				class="i-house" style="display: none;"></i></a> <span class="lucky-try"></span>
			</li>
		</ul>
	</div>
<div class="head-wrap">
    <hr class="divider"/>
    <div id="search-box" class="search-box-new line">
        <ul class="channel grid">
            <li><a log="sc_pos:c_baidu" rel="nofollow" href="http://www.baidu.com/">网页</a></li>
            <li><a log="sc_pos:c_news" rel="nofollow" href="http://news.baidu.com/">新闻</a></li>
            <li><a log="sc_pos:c_tieba" rel="nofollow" href="http://tieba.baidu.com/">贴吧</a></li>
            <li><strong>知道</strong></li>
            <li><a log="sc_pos:c_mp3" rel="nofollow" href="http://music.baidu.com/">音乐</a></li>
            <li><a log="sc_pos:c_pic" rel="nofollow" href="http://image.baidu.com/">图片</a></li>
            <li><a log="sc_pos:c_video" rel="nofollow" href="http://v.baidu.com/">视频</a></li>
            <li><a log="sc_pos:c_map" rel="nofollow" href="http://map.baidu.com/">地图</a></li>
            <li><a log="sc_pos:c_doc" rel="nofollow" href="http://wenku.baidu.com/">文库</a></li>
            <li><a log="sc_pos:c_more" href="http://www.baidu.com/more/">更多&raquo;</a></li>
        </ul>
        <div class="search-block clearfix" mark="off">
            <div class="search-cont clearfix">
                <a class="logo" href="/" title="百度知道"></a>
                <form action="/search" name="search-form" method="get" id="search-form-new" class="search-form">
                    <input class="hdi" id="kw" maxlength="256" tabindex="1" size="46" name="word" value="" autocomplete="off"/>
                    <button alog-action="g-search-anwser" type="submit" id="search-btn" hidefocus="true" tabindex="2" class="btn-global">搜索答案</button>
                    <a href="#" alog-action="g-i-ask" class="i-ask-link" id="ask-btn-new">我要提问</a>
                </form>
            </div>
        </div>
    </div>

</div>
<div class="nav-menu-container" id="j-nav-menu-container">
    <div class="nav-show-control">
        <div class="nav-menu-layout">
            <div class="nav-menu line">
                <div class="nav-menu-content container">
                    <div class="content-box">
                        <div class="menu-item menu-item-index">
                            <a class="menu-title" href="/">首页</a>
                        </div>
                        <div class="menu-item-box">
                            <div class="menu-item menu-item-cat">
                                <a class="menu-title" href="/list?fr=daohang" target="_blank">问题</a>
                                <div class="menu-content">
                                    <ul class="menu-sub-list">
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?fr=daohang" target="_blank">全部问题</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=101&amp;fr=daohang" target="_blank">经济金融</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=102&amp;fr=daohang" target="_blank">企业管理</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=103&amp;fr=daohang" target="_blank">法律法规</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=104&amp;fr=daohang" target="_blank">社会民生</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=105&amp;fr=daohang" target="_blank">科学教育</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=106&amp;fr=daohang" target="_blank">健康生活</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=107&amp;fr=daohang" target="_blank">体育运动</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=108&amp;fr=daohang" target="_blank">文化艺术</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=109&amp;fr=daohang" target="_blank">电子数码</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=110&amp;fr=daohang" target="_blank">电脑网络</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=111&amp;fr=daohang" target="_blank">娱乐休闲</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=113&amp;fr=daohang" target="_blank">行政地区</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=114&amp;fr=daohang" target="_blank">心理分析</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/list?cid=115&amp;fr=daohang" target="_blank">医疗卫生</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-item menu-item-lanmu">
                                <a class="menu-title" href="javascript:;">精选</a>
                                <div class="menu-content">
                                    <ul class="menu-sub-list">
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item column-sub-item" href="/special/column?fr=daohang" target="_blank">知道专栏</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/daily?fr=daohang" target="_blank">知道日报</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/bigdata/view" target="_blank">知道大数据</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/culture/index?fr=daohang" target="_blank">知道非遗</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-item menu-item-user">
                                <a class="menu-title" href="javascript:;">用户</a>
                                <div class="menu-title-icon">
                                    <i class="iknow-icons"></i>
                                </div>
                                <div class="menu-content">
                                    <ul class="menu-sub-list">
                                        <li class="menu-sub-itemline-wp"><a class="menu-sub-item metis-sub-item" href="/home/partnerhome?fr=daohang" target="_blank">知道合伙人（内测）</a>
                                            <div class="menu-title-icon">
                                                <i class="iknow-icons"></i>
                                            </div>
                                        </li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/uteam?fr=daohang" target="_blank">芝麻团</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/user/admin?fr=daohang" target="_blank">芝麻将</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/hangjia?fr=daohang" target="_blank">知道行家</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/daily/authorcenter?fr=daohang" target="_blank">日报作者</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/misc/nowshowstar?fr=daohang" target="_blank">知道之星</a></li>
                                        <li style="list-style: none; display: inline">
                                            <div class="menu-item-user-list"> 机构合作
                                                <div class="line-bar">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/hangjia?fr=daohang" target="_blank">机构行家</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/opendev?fr=daohang" target="_blank">开放平台</a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/special/view/cooperation?fr=daohang" target="_blank">品牌合作</a></li>
                                        <li style="list-style: none; display: inline">
                                            <div class="menu-item-user-list">
                                                知道福利
                                                <div class="line-bar">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item" href="/shop?fr=daohang" target="_blank">财富商城</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-item menu-item-expert">
                                <a class="menu-title" href="javascript:;">特色</a>
                                <div class="menu-content">
                                    <ul class="menu-sub-list">
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item menu-sub-item-expert" href="http://jingyan.baidu.com/" target="_blank"><span>经验</span></a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item menu-sub-item-expert" href="https://baobao.baidu.com" target="_blank"><span>宝宝知道</span></a></li>
                                        <li class="menu-sub-item-wp"><a class="menu-sub-item menu-sub-item-expert" href="https://www.zybang.com" target="_blank"><span>作业帮</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="menu-right-section">
                            <ul class="menu-right-list">
                                <li class="menu-right-list-item zhidao-app"><a href="/activity/simpleindexact?tplName=nareplace&amp;type=pc" class="menu-right-list-link" target="_blank"><span class="item-name">手机版</span></a></li>
                                <li class="menu-right-list-item user-center"><a href="/ihome" class="menu-right-list-link" target="_blank"><span class="item-name">我的知道</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- 问题详情开始 -->
<div id="body" class="container">
    <div class="layout-wrap">
        <div id="top-nav-bar" class="top-nav-bar" style="display: none;">
            <div class="container2">
                <a class="toplogo" href="http://zhidao.baidu.com" title="百度知道"></a>
                <div class="topsearch">
                    <form action="/search" name="search-nav-form" id="search-nav-form" method="get">
                        <input class="hdi" id="nav-kw" maxlength="256" tabindex="1" size="46" name="word" value="" autocomplete="off"/>
                        <button alog-action="g-search-anwser" type="submit" id="search-btn-nav" hidefocus="true" tabindex="2" class="i-search-link">搜索答案</button>
                    </form>
                </div>
            </div>
        </div>
        <div style="display:none">
            <a href="/">百度知道</a> &gt;
            <a href="/browse/83">教育/科学</a> &gt;
            <a href="/browse/197">学习帮助</a>
        </div>
        
        
        <div class="wgt-ask accuse-response line mod-shadow" id="wgt-ask" >
        	<!-- 问题标题 -->
            <h1 accuse="qTitle"><i class="iknow-qb_home_icons i-status-being grid mr-10"></i><span class="ask-title">${question.title}</span></h1>
            <!-- 问题详细描述 -->
            <div class="line mt-5 q-content" accuse="qContent">${question.content}</div>
            <!-- 问题的插图 -->
            <div class="q-img-wp">
                <div class="q-img-con">
                    <ul class="q-img-ul">
                        <li class="q-img-li" data-src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/314e251f95cad1c890c9bed1743e6709c83d51d1.jpg"><img class="q-img-item" src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/314e251f95cad1c890c9bed1743e6709c83d51d1.jpg"/></li>
                    </ul>
                </div>
            </div>
            
            
           <!--  问题的发布者,发布时间,浏览次数,标签 -->
            <div class="line f-aid ask-info ff-arial" id="ask-info">
				<span class="grid-r ask-time">
				<ins class="share-area">
				<div class="others-share">
					<span class="grid-r ask-time">
					<ins class="share-area">
					<a href="javascript:void(0)" target="_blank" class="others-share-item weixin iknow-qb_share_icons" data-type="weixin-click"></a>
					<a href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dweibo&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pic=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item weibo iknow-qb_share_icons" data-type="weibo-click"></a>
					<a href="http://connect.qq.com/widget/shareqq/index.html?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dqq&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pics=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item qq iknow-qb_share_icons" data-type="qq-click"></a>
					<a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dqzone&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pics=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item qzone iknow-qb_share_icons" data-type="qzone-click"></a>
					</ins></span>
				</div>
				</ins>
				</span>
				<!-- 问题的发布者名字 -->
                <a class="" alog-action="qb-ask-uname" rel="nofollow" href="/usercenter?uid=a4214069236f25705e79e91a" target="_blank">${question.submitterName}</a>
                 <span class="f-pipe"></span>
                 <!--  问题发布时间 -->
                 <span>3 分钟前</span>
                <span id="v-times" class="f-pipe" style="">|</span>
                 <!-- 问题的浏览次数 -->
                <span class="browse-times">浏览${question.visits}次</span>
                <span class="f-pipe">|</span>
                <!-- 问题的标签 -->
                <div class="f-aid ask-tags">
					<i class="iknow-qb_replyer_icons i-ask-tags"></i>
					<span class="question-list-item-tag">
						<a href="#" target="_blank" class="question-tag-link">${question.questionTag}</a>
					</span>
				</div>
                <ins class="accuse-area">
                    <span class="f-pipe">|</span>
                    <span class="wgt-accuse f-aid"><em class="accuse-enter"><a href="#" class="accuse-btn f-aid" log="area:panel,pos:accuse,action:click,accusetype:0,rid:">举报</a></em></span>
                </ins>
            </div>


			<!--    您的回答被采纳后将获得：系统奖励 -->
<!-- 				<div class="guide-tip mt-10 f-gray" id="count-down-tip"> -->
<!-- 					<ul class="guide-count-down f-pening"> -->
<!-- 						<li>您的回答被采纳后将获得：系统奖励<i -->
<!-- 							class="iknow-qb_home_icons i-new-wealth ml-5"></i><span -->
<!-- 							class="f-orange ml-5">15</span>（财富值+成长值） -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->


			<!-- 我有更好的答案,按钮 -->
            <div class="line">
                <a class="mb-5 mt-15 search-relate" href="https://www.baidu.com/s?wd=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C&amp;ie=utf-8" target="_blank" style="display: none;">搜索相关资料</a>
                <span class="mt-20 f-14 f-blue inline-block more-answers" alog-alias="qb-answer-bar" id="answer-bar">我有更好的答案</span>
            </div>

              
				<div class="wgt-search-relate f-yahei f-pening"
					style="display: block;">
					<p class="title">可选中1个或多个下面的关键词，搜索相关资料。也可直接点“搜索资料”搜索整个问题。</p>
					<ul class="line mt-5">
						<li class="word grid">日剧</li>
						<li class="word grid">新选组</li>
						<li class="word grid">百度</li>
						<li class="word grid">资源</li>
						<li class="word grid word-search"><em
							class="iknow-qb_home_icons"></em>搜索资料</li>
					</ul>
				</div>


<!--  				border-radius: 3px; -->
<!-- 				<div class="line" id="answer-editor" data-realname="2"></div> -->
				
				<!-- 富文本 -->
				<div class="line  edui-iknow" id="answer-editor" data-realname="" style="font-size:25px;border: 0px solid #dae0e4; display: none">
					    
					    <!-- 问题id -->
					     <input type="hidden" id="qid" value="${question.id}">
					    <!-- 用户id,用户名 -->
					     <input type="hidden" id="uid" value="${userSession.id}">
					     <input type="hidden" id="uname" value="${userSession.userName}">
					     
						<textarea  id="reply-content" class="edui-editor-iframeholder edui-iknow" style="width: 100%; height: 280px; z-index: 100; overflow: auto;border: 1px solid #dae0e4;border-radius: 10px;resize: none;" ></textarea>
					<div class="addons line">
						<div class="ik-authcode-outer" style="display: none;"></div><br/>
						<a class="btn-32-green grid-r new-editor-deliver-btn" id="sub-reply-btn">提交回答</a>
					</div>
				</div>
				
				   

            <br/>
				<!-- 显示问题的所有回答 -->
		<div class="wgt-answers" id="wgt-answers">
		       <!-- 显示问题回答的数量 -->
            <div class="hd line other-hd">
                <h2>${question.replyCount!=0 ? question.replyCount : 0}条回答 </h2>
            </div>
            
            <div class="bd-wrap">
                  <div class="bd answer answer-first answer-fold" id="reply-list">
                   <!-- 遍历回答开始 -->
							<c:forEach items="${question.replyList}" var="reply">
							<!-- 如果问题下没有回答 -->
							   <c:if test="${reply.id!=null}">
								<div class="line reply">
									<a id="here" name="here"></a>
									<!-- 回答者id -->
									<div class="line content" data-valuerrank="100016">
										<div id="answer-content-2797506583" accuse="aContent" class="answer-text line">
											<span class="con">${reply.content}</span>
										</div>
										<div class="line info f-light-gray mt-10 mb-5 f-12">
											<div class="grid pt-5">
												${reply.replyerName} 
												<span class="f-pipe">|</span> 
												<!-- 转换回答时间的格式 位 yyyy-MM-dd-->
												<span class="pos-time">发布于<fmt:formatDate value="${reply.replyTime}" pattern="yyyy-MM-dd"/></span>
											</div>

											<!-- 举报,评论,点赞,点踩 开始-->
											<div class="grid-r f-aid pos-relative">
												<ins class="accuse-area" alog-action="qb-accuse-link" data-rid="2797506583">
												<!-- 举报 -->
													<span class="wgt-accuse f-aid"> 
														<em class="accuse-enter"> 
															<i class="iknow-qb_home_icons i-arrow-accuse"></i> 
															<a href="#" class="accuse-btn f-aid"log="area:panel,pos:accuse,action:click,accusetype:1,rid:2797506583">举报</a>
														</em>
													</span> 
													<span class="f-pipe">|</span>
												</ins>
												<!-- 评论 -->
												<span alog-action="qb-comment-btn" class="comment f-black cursor comment-btn">
													<input type="hidden" class="rid" value="${reply.id}">
													<i class="iknow-qb_home_icons i-icon-comment mr-5"></i>
													<span class="comment-num"><c:if test="${reply.commentCount>0}">(${reply.commentCount})</c:if></span>评论
												</span>
												<!-- 点赞和点踩 -->
												<div class="qb-zan-eva">
													<span alog-action="qb-zan-btn"
														class="iknow-qb_home_icons evaluate evaluate-32"
														id="evaluate-2797506583" data-evaluate="35"> 
														<i class="iknow-qb_home_icons i-evaluate"></i> 
														<b class="evaluate-tip" style="display: none" id="37-tip">赞</b>
														<b class="evaluate-num evaluate-num-fixed" id="37-num">35</b>
													</span> 
													<span alog-action="qb-evaluate-outer"
														class="iknow-qb_home_icons evaluate evaluate-bad evaluate-32"
														id="evaluate-bad-2797506583" data-evaluate="22"> 
														<i class="iknow-qb_home_icons i-evaluate"></i> 
														<b class="evaluate-tip" style="display: none" id="37-bad-tip">踩</b>
														<b class="evaluate-num evaluate-num-fixed" id="37-bad-num">22</b>
													</span>
												</div>
											</div>
											<!-- 举报,评论,点赞,点踩 结束-->
										</div>
									</div>
									
								<!-- 评论回答开始 -->
								<div id="comment-area" class="comment-area" style="display: block;">
									<div class="comment-arrow" style="left: 433.609px;">
										<em></em><span></span>
									</div>
									<div id="69inner" class="comment-area-inner">
										<div id="69comment-wrap" class="comment-action-wrap">
											<div id="395mini-editor" class="mini-editor">
												<textarea id="comment-textarea" class="comm-atea"></textarea>
												<p id="395limit" class="mini-editor-limit" style="display: none;">200</p>
											</div>
											<div id="69bar" class="comment-action-bar line">
												<div id="69action" class="comment-action grid-r mt-10 mb-10">
												    <!-- 问题回答id -->
													<input type="hidden" class="rid" value="${reply.id}">
													<a id="69submit" class="comment-submit ml-15 btn-33-green"
														href="#" title="按 Ctrl+Enter 发布评论"
														alog-action="qb-comment-submit" data-realname="">发布评论</a>
												</div>
											</div>
										</div>
										
										
<!-- 										$(this).parents(".reply").find('#comment-area').find("#comment-body"); -->
										<!-- 该回答下面的评论  开始-->
										<div id="comment-body" class="comment-body line">
										    
										    <!-- 回答的一条回复 -->
<!-- 											<div class="comment-entry f-12 first last"> -->
<!-- 												<div class="details f-aid"> -->
<!-- 													<a class="f-light comment-entry-userface" href="#" target="_blank"> -->
<!-- 														<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/2061e8a1a1e6b0b4e4b880e4b8ade5ad99e4ba98215f.jpg"> -->
<!-- 													</a> -->
<!-- 													<a class="f-light comment-entry-username" href="" target="_blank">衡水一中孙亘</a> -->
<!-- 													<span class="f-pipe">|</span> -->
<!-- 													<span class="comment-entry-time">2018-1-26 09:59</span> -->
<!-- 												</div> -->
<!-- 												<div class="comment-content"> -->
<!-- 													<div class="comment-arrow"> -->
<!-- 														<em></em><span></span> -->
<!-- 													</div> -->
<!-- 													hushuo<a class="reply-comment ml-5 f-light" href="#">回复</a> -->
<!-- 												</div> -->
<!-- 											</div> -->
																						
										</div>
										<!-- 该回答下面的评论  结束-->
									</div>
								</div>
								<!-- 评论回答结束-->
						</div>
						</c:if>
				</c:forEach>
				<!-- 遍历回答结束 -->
                </div>
 
               
                <!-- 分页栏显示 -->
                <div alog-group="qb-ans-pager" class="wgt-pager pager h-center line pb-20 pt-20" style="display: none;">
                    <b>1</b>
                    <a href="/question/500499341353007004.html?sort=9&amp;rn=5&amp;pn=5#wgt-answers">2</a>
                    <a href="/question/500499341353007004.html?sort=9&amp;rn=5&amp;pn=10#wgt-answers">3</a>
                    <a href="/question/500499341353007004.html?sort=9&amp;rn=5&amp;pn=15#wgt-answers">4</a>
                    <a href="/question/500499341353007004.html?sort=9&amp;rn=5&amp;pn=20#wgt-answers">5</a>
                    <a class="pager-next" href="/question/500499341353007004.html?sort=9&amp;rn=5&amp;pn=5#wgt-answers">下一页&gt;</a>
                </div>
                
                <!-- 打开其它的消息 -->
                <div id="show-hide-container">
                    <div id="show-answer-hide" class="">
                        <span style="display: none">收起</span> 其他${question.replyCount-3}条回答
                    </div>
                </div>
            </div>
        </div>

        
        <!-- 为您推荐 -->
        <div class="wgt-bottom-union mod-shadow line">
            <h2> 为您推荐： </h2>
            <div class="hao-lu-list" id="hao-lu-list">
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E5%96%B0%E7%A7%8D%E7%AC%AC%E4%BA%8C%E5%AD%A312%E6%97%A0%E5%88%A0&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京喰种第二季12无删</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E7%AC%AC%E4%BA%8C%E5%AD%A3&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼第二季</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%20%E5%91%97&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼 呗</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E7%94%B5%E5%BD%B1&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼电影</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E7%9C%9F%E4%BA%BA%E7%89%88&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼真人版</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E6%98%AF%E4%BB%80%E4%B9%88&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼是什么</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E4%B8%BB%E9%A2%98%E6%9B%B2&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼主题曲</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">《东京食尸鬼》</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E9%A3%9F%E5%B0%B8%E9%AC%BC%E4%B9%8B&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">食尸鬼之</a>
                </div>
                <div class="item">
                    <a class="hao-link" href="https://www.baidu.com/s?word=%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E8%A7%82%E7%9C%8B%E7%BD%91%E7%AB%99&amp;tn=50000075_hao_pg&amp;ie=utf-8&amp;rsv_dl=0_cont_hao123_top" target="_blank">东京食尸鬼观看网站</a>
                </div>
            </div>
        </div>
        
        
       <!--  其他类似问题  -->
        <div class="wgt-related mt-5 mod-shadow" id="wgt-related">
            <h2> 其他类似问题 </h2>
            <div class="related-list line">
                <ul class="list-34 related-ul" alog-group="qb-relative-que">
                    <li><span class="grid-r f-aid ff-arial">2015-02-15</span><a href="/question/328026093401934325.html?qbl=relate_question_0" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:1,cid:197" class="related-link related-link-zd" data-qid="328026093401934325"><span class="related-restrict-title grid">动漫《东京食尸鬼》人物最强排行榜</span><em class="praise-num ml-5" title="所有回答获得73个赞同"><span class="ml-5 ff-arial">73</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2014-10-05</span><a href="/question/936753331632648212.html?qbl=relate_question_1" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:2,cid:197" class="related-link related-link-zd" data-qid="936753331632648212"><span class="related-restrict-title grid">东京食尸鬼神人物排名</span><em class="praise-num ml-5" title="所有回答获得90个赞同"><span class="ml-5 ff-arial">90</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2016-08-14</span><a href="/question/1434437660725033659.html?qbl=relate_question_2" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:3,cid:197" class="related-link related-link-zd" data-qid="1434437660725033659"><span class="related-restrict-title grid">东京食尸鬼里面最强的人类搜查官是谁？实力在整个动漫中排第几？</span><em class="praise-num ml-5" title="所有回答获得3个赞同"><span class="ml-5 ff-arial">3</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2015-03-02</span><a href="/question/135912032146766485.html?qbl=relate_question_3" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:4,cid:197" class="related-link related-link-zd" data-qid="135912032146766485"><span class="related-restrict-title grid">动漫东京食尸鬼最强boss是谁</span><em class="praise-num ml-5" title="所有回答获得7个赞同"><span class="ml-5 ff-arial">7</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2014-08-02</span><a href="/question/752549235166952164.html?qbl=relate_question_4" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:5,cid:197" class="related-link related-link-zd" data-qid="752549235166952164"><span class="related-restrict-title grid">东京食尸鬼毁各种动漫人物图片，越多越好</span><em class="praise-num ml-5" title="所有回答获得39个赞同"><span class="ml-5 ff-arial">39</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2016-06-03</span><a href="/question/266303924316370645.html?qbl=relate_question_5" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:6,cid:197" class="related-link related-link-zd" data-qid="266303924316370645"><span class="related-restrict-title grid">东京食尸鬼最强的是什么小丑L假面的，这是个什么角色？动画里咋...</span><em class="praise-num ml-5" title="所有回答获得19个赞同"><span class="ml-5 ff-arial">19</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2015-05-03</span><a href="/question/1669541761128890827.html?qbl=relate_question_6" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:7,cid:197" class="related-link related-link-zd" data-qid="1669541761128890827"><span class="related-restrict-title grid">东京食尸鬼赫子实力排名</span><em class="praise-num ml-5" title="所有回答获得1475个赞同"><span class="ml-5 ff-arial">1475</span></em></a></li>
                    <li><span class="grid-r f-aid ff-arial">2016-01-21</span><a href="/question/1798742841485508267.html?qbl=relate_question_7" target="_blank" log="fr:qrl,pms:newqb,page:qb-new,pos:relative_title,qtype:zd,index:8,cid:197" class="related-link related-link-zd" data-qid="1798742841485508267"><span class="related-restrict-title grid">东京食尸鬼实力派角色人物分别叫什么名字介绍</span><em class="praise-num ml-5" title="所有回答获得4个赞同"><span class="ml-5 ff-arial">4</span></em></a></li>
                </ul>
            </div>
            <div class="related-more clearfix">
                <a log="fr:qrl,pms:newqb,pos:relative_more" alog-action="qb-relative-more" target="_blank" rel="nofollow" href="/search?word=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C&amp;ie=gbk&amp;fr=qrl&amp;cid=197&amp;qbl=relate_question_more" class="line f-14 mt-5">更多类似问题<span class="ff-arial">&nbsp;&gt;</span></a>
            </div>
        </div>
        
        <!-- 正在求助 -->
        <div class="wgt-push mod-shadow last">
            <div class="wgt-push-title">
                <h2 class="hd line"> 正在求助 </h2>
                <div class="wgt-push-change smooth">
                    <i class="iknow-icons"></i>
                    <span>换一换</span>
                </div>
                <div class="wgt-push-intro smooth">
                    <span>回答问题，赢新手礼包</span>
                    <i class="iknow-icons"></i>
                </div>
            </div>
            <ul class="push-ul">
                <li class="line" data-index="0"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=1a2ce889b9e69c89e781b0e69cba4130631c" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/1a2ce889b9e69c89e781b0e69cba4130631c.jpg"/></a><span class="push-item-el push-item-time smooth">苦等12分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/2144049816281427748?push=4&amp;entry=qb_qb_wait2refer" target="_blank" class="push-item-el push-item-link" title="怎么在打架前判断一个人是不是很能">怎么在打架前判断一个人是不是很能</a>
                    <div class="push-item-el push-item-btn" data-index="0">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
                <li class="line" data-index="1"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=16bbf1c1" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/16bbf1c1.jpg"/></a><span class="push-item-el push-item-time smooth">苦等13分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/1994114161245872907?push=4&amp;entry=qb_qb_wait2refer" target="_blank" class="push-item-el push-item-link" title="核桃树不结果的原因是什么">核桃树不结果的原因是什么</a>
                    <div class="push-item-el push-item-btn" data-index="1">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
                <li class="line" data-index="2"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=a5004b796f79613138414b31871c" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/a5004b796f79613138414b31871c.jpg"/></a><span class="push-item-el push-item-time smooth">苦等14分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/1994114097499353867?push=4&amp;entry=qb_qb_wait2refer" target="_blank" class="push-item-el push-item-link" title="西罗的衰退是年龄还是肌肉">西罗的衰退是年龄还是肌肉</a>
                    <div class="push-item-el push-item-btn" data-index="2">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
                <li class="line" data-index="3"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=906f6b18" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/906f6b18.jpg"/></a><span class="push-item-el push-item-time smooth">苦等14分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/588885808313698405?push=4&amp;entry=qb_qb_wait2refer" target="_blank" class="push-item-el push-item-link" title="怎么样才能娶到空姐">怎么样才能娶到空姐</a>
                    <div class="push-item-el push-item-btn" data-index="3">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
                <li class="line" data-index="4"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=42296f30e586bbe586bb646673681f" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/42296f30e586bbe586bb646673681f.jpg"/></a><span class="push-item-el push-item-time smooth">苦等21分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/1836027529492408380?push=4&amp;entry=qb_qb_wait2refer_discuss" target="_blank" class="push-item-el push-item-link" title="爱车的表现不是久置，而是常开，为什么这样说">爱车的表现不是久置，而是常开，为什么这样说</a>
                    <div class="push-item-el push-item-btn" data-index="4">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
                <li class="line" data-index="5"><a log="action:click,area:wgt-push-usercenter,module:question,page:question" href="/usercenter?uid=65ce61776865726530313431ec49" target="_blank" class="push-item-el push-item-img-a"><img class="push-item-el push-item-img" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/65ce61776865726530313431ec49.jpg"/></a><span class="push-item-el push-item-time smooth">苦等31分钟：</span><a log="action:click,area:wgt-push-question,module:question,page:question" href="/question/588821807575352965?push=4&amp;entry=qb_qb_wait2refer" target="_blank" class="push-item-el push-item-link" title="为什么我觉得脾气大的人性格不好">为什么我觉得脾气大的人性格不好</a>
                    <div class="push-item-el push-item-btn" data-index="5">
                        <i class="iknow-icons"></i>
                        <span class="smooth">回答</span>
                    </div>
                </li>
            </ul>
            <div class="ft line more-push clearfix">
                <a class="grid" log="action:click,area:wgt-push-more,module:question,page:question" href="/ihome" target="_blank">更多等待求助问题<span class="ff-arial">&nbsp;&gt;</span></a>
            </div>
        </div>
        
        </div>
       
        <!-- 更换形象 -->
        <div class="wgt-user mod-shadow mb-5" id="wgt-user">
            <div class="line user-info">
                <div id="user-avarta" class="avarta grid mr-10 avatar-mask-p">
                    <a alog-action="qb-enter-uc" href="/ihome/" target="_blank"><img class="user-head-img" width="50" height="50" src="https://gss0.bdstatic.com/70cFsj3f_gcX8t7mm9GUKT-xh_/avatar/100/r6s1g2.gif"/></a>
                    <div class="goto-set-avatar" style="display: none;">
                        <a href="/ihome/set/profile?type=avatar" target="_blank">更换形象</a>
                    </div>
                </div>
                <div class="info grid f-12">
                    <p class="line">
                        <a href="http://zhidao.baidu.com/ihome" target="_blank" class="user-name">diebeilei</a>
                    </p>
                    <p>
                        <a class="f-aid iknow-qb_grade_icons i-gradeIndex-2" title="采纳率：100%" target="_blank" href="http://help.baidu.com/question?prod_en=zhidao&amp;class=338&amp;id=1507"></a>
                    </p>
                    <a href="#" class="grid-l go-sign-in" data-log="type:2060,action:click,area:sign-in-area,page:qb">签到</a>
                </div>
            </div>
            <div class="qbside-top-line">
            </div>
        </div>
        
        
       
  
    </div>
    
</div>


<!-- 尾部信息 -->
<div class="wgt-footer-new">
    <div class="footer-wp">
        <ul class="footer-list clearfix">
            <li class="footer-list-item footer-list-guide">
                <div class="footer-title">
                    新手帮助
                </div>
                <ul class="footer-link clearfix">
                    <li><a href="http://help.baidu.com/question?prod_en=zhidao&amp;class=320&amp;id=1525" target="_blank">如何答题</a></li>
                    <li><a href="http://help.baidu.com/question?prod_id=9&amp;class=320&amp;id=1526" target="_blank">获取采纳</a></li>
                    <li><a href="http://help.baidu.com/question?prod_id=9&amp;class=337&amp;id=1513" target="_blank">使用财富值</a></li>
                </ul>
            </li>
            <li class="footer-list-item footer-list-intro">
                <div class="footer-title">
                    玩法介绍
                </div>
                <ul class="footer-link clearfix">
                    <li><a href="/shop" target="_blank">知道商城</a></li>
                    <li><a href="http://zhidao.baidu.com/pcs/zhimatuan/index.html" target="_blank">知道团队</a></li>
                    <li><a href="/hangjia" target="_blank">行家认证</a></li>
                    <li><a href="http://zhidao.baidu.com/s/hi-quality/index.html" target="_blank">高质量问答</a></li>
                </ul>
            </li>
            <li class="footer-list-item footer-list-sug">
                <div class="user-tip" id="js-footer-user-tip" style="display: none;">
                    <p class="title">
                        您的帐号状态正常
                    </p>
                    <p class="desc">
                        感谢您对我们的支持
                    </p>
                </div>
                <div class="footer-title">
                    投诉建议
                </div>
                <ul class="footer-link clearfix">
                    <li><a href="javascript:;" log="module:common,action:click,area:footer_feedback" target="_blank" id="footer-feedback">意见反馈</a></li>
                    <li><a href="/misc/appeal" log="module:common,action:click,area:footer_appeal" target="_blank" id="js-footer-appeal">账号申诉</a></li>
                    <li><a href="http://ikefu.baidu.com/web/zhishisousuo#" log="module:common,action:click,area:footer_consult" target="_blank">智能咨询</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="footer-new">
        <p class="jt1128">
            京ICP证030173号-1&nbsp;&nbsp;&nbsp;京网文【2013】0934-983号&nbsp;&nbsp;&nbsp;&nbsp; &copy;2018Baidu&nbsp;&nbsp;<a rel="nofollow" href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="http://help.baidu.com/question?prod_id=9&amp;class=325&amp;id=2760" target="_blank">知道协议</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="/special/view/cooperation" target="_blank">百度知道品牌合作</a>
        </p>
    </div>
</div>
<div id="anttongji"></div>

<script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/lib/mod.75d1f98.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/lib.33719ed.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/commonjs.41da6a1.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/ueditor.62029f8.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/ask/editor-guide/editor-guide.e836d69.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/js/app-guide/app-guide.f256fe5.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/pkg/replyer.20027be.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/mavin-statistics/mavin-statistics.c089f0a.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/image-scale/image-scale.0d9da5a.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/js/answer-dialog/answer-dialog.090b047.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/widget/js/ck/ck.854102c.js"></script>
<script type="text/javascript" src="https://iknowpc.bdimg.com/static/question/pkg/module.9b5ec1c.js"></script>


<!-- <script type="text/javascript" src="https://www.baidu.com/con?from=zhidao"></script> -->
<!-- 右边导航栏开始 -->
<div class="jump-top-box" style="right: 5px; top: 430px;">
    <div class="jump-share">
        <div class="jump-share-tit">  分享</div>
        <div class="share-area">
            <div class="others-share">
                <a href="javascript:void(0)" target="_blank" class="others-share-item weixin iknow-qb_share_icons" data-type="weixin-click"></a>
                <a href="http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dweibo&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pic=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item weibo iknow-qb_share_icons" data-type="weibo-click"></a>
                <a href="http://connect.qq.com/widget/shareqq/index.html?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dqq&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pics=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item qq iknow-qb_share_icons" data-type="qq-click"></a>
                <a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fzhidao.baidu.com%2Fquestion%2F500499341353007004%3Fsharesource%3Dqzone&amp;title=%E5%8A%A8%E6%BC%AB%E3%80%8A%E4%B8%9C%E4%BA%AC%E9%A3%9F%E5%B0%B8%E9%AC%BC%E3%80%8B%E4%BA%BA%E7%89%A9%E6%9C%80%E5%BC%BA%E6%8E%92%E8%A1%8C%E6%A6%9C_%E7%99%BE%E5%BA%A6%E7%9F%A5%E9%81%93&amp;pics=https%3A%2F%2Fgss0.bdstatic.com%2F70cFsjip0QIZ8tyhnq%2Fimg%2Fiknow%2Fzhidaologo.png" target="_blank" class="others-share-item qzone iknow-qb_share_icons" data-type="qzone-click"></a>
            </div>
        </div>
    </div>
    <div class="jump-task-list">
        <a class="open-task-list" data-action="open-task-list">任务列表</a>
    </div>
    <div class="jump-top" style="visibility: hidden;">
        <a href="#" target="_self">返回顶部</a>
    </div>
</div>
<!-- 右边导航栏结束-->


<script type="text/javascript" src="http://r.baiduqa.com/static/js/index.js"></script>
<script type="text/javascript" src="http://r.baiduqa.com/static/js/question-details.js"></script>
</body>
</html>