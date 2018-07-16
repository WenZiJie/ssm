<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div id="loginModal" class="modal fade">
		<!--modal固定布局 上下左右都是0,表示充满全屏,支持移动设备上的使用触摸方式进行移动。-->
		<div class="modal-dialog  modal-sm">
			<!--modal-dialog 默认相对定位，自适应宽度，大于768px时宽度600 居中-->
			<div class="modal-content">
				<!--modal-content 模态框的边框，边距，背景色，阴影效果-->
				<div class="modal-header login-modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-left" ><img alt="" src="/static/img/baidu-login.jpg"></h4>
					<p id="login-msg" class="text-center text-danger"></p>
				</div>
				<div class="media-body" style="padding-top: 15px;">
					<form action="#" class="form-horizontal" method="post">
						<div class="form-group ">
							<div class="col-md-10 col-md-offset-1">
								<input type="text" name="username" class="form-control form-input" placeholder="手机/邮箱/用户名">
							</div>
						</div>
						<div class="form-group ">
							<div class="col-md-10 col-md-offset-1">
								<input type="password" name="password" class="form-control form-input" placeholder="密码">
							</div>
						</div>

						<div class="form-group ">
							<div class="col-md-10 col-md-offset-1">
								<input type="checkbox" name="isFreeLogin" value="1" />下次自动登陆
							</div>
						</div>
						<div class="form-group ">
							<div class="col-md-10 col-md-offset-1">
								<input type="submit" id="login-modal-btn" class="form-control btn btn-success"
									value="登录" />
							</div>
						</div>
						<div class="form-group ">
							<div class="col-md-10 col-md-offset-1">
								<a href ="#">忘记密码？</a>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
			<!--modal-content-->
		</div>
		<!--modal-dialog-->
	</div><!--modal-->
