<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--注册模态框-->
	<div id="registerModal" class="modal fade">
		<!--modal固定布局 上下左右都是0,表示充满全屏,支持移动设备上的使用触摸方式进行移动。-->
		<div class="modal-dialog ">
			<!--modal-dialog 默认相对定位，自适应宽度，大于768px时宽度600 居中-->
			<div class="modal-content">
				<!--modal-content 模态框的边框，边距，背景色，阴影效果-->
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">注册曝图网账号</h4>
				</div>
				<div class="media-body" style="padding-top: 15px;">
					<form action="${pageContext.request.contextPath}/addUser.do" method="post" class="form-horizontal" >
						<div class="form-group ">
							<span class="col-md-3 text-center">用户名:</span>
							<div class="col-md-8">
								<input type="text" name="username" class="form-control" reg="^[A-Za-z]{2}\d+$"  placeholder="开头[2个字母简写]+用户ID[数字]如:sd10059">
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">密码:</span>
							<div class="col-md-8">
								<input type="password" name="password" reg="^[A-Za-z0-9]{6,12}$ " class="form-control" placeholder="含有数字和字母,长度为6——12">
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">再次输入密码:</span>
							<div class="col-md-8">
								<input type="password" name="repassword" class="form-control" placeholder="两次输入的密码必须一样">
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">出生年月日:</span>
							<div class="col-md-8">
								<input type="text" name="birthday" Class="Wdate form-control"
									placeholder="" readonly="readonly"
									onclick="WdatePicker();" placeholder="">
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">性别:</span>
							<div class="col-md-8">
								<input type="radio" checked="checked" value="1" name="gender">男 <input
									type="radio" value="0" name="gender">女
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">邮箱:</span>
							<div class="col-md-8">
								<input type="text" name="email" class="form-control" placeholder="邮箱地址，如wangking717@qq.com" reg="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$">
							</div>
						</div>
						<div class="form-group ">
							<span class="col-md-3 text-center">电话:</span>
							<div class="col-md-8">
								<input type="text" name="phone" class="form-control" reg="^\d{3}-\d{8}$|^\d{4}-\d{7}$" placeholder="国内电话号码，格式: 0832-4405222 或 021-87888822" >
							</div>
						</div>
						<div class="form-group ">
							<div class="col-md-8 col-md-offset-3">
								<input type="submit" class="form-control btn btn-primary"
									value="注册" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
			<!--modal-content-->
		</div>
		<!--modal-dialog-->
	</div>
	<!--modal-->
