<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common_top.jsp"%>
<div class="phone4s-panel">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">欢迎注册Phone4S帐号</h3>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">邮箱地址：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="firstname"
							placeholder="请输入您的邮箱，例如：phone4s@phone4s.com">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">设置密码：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="lastname"
							placeholder="密码长度8~16位，数字、字母、字符至少包含两种">
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">确认密码：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="lastname"
							placeholder="请再次输入您设置的密码，以便验证">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox"> 同意并愿意遵守Phone4S户协议和隐私政策
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-5 col-sm-10">
						<p><a class="btn btn-primary" role="button">同意注册</a></p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="common_bottom.jsp"%>