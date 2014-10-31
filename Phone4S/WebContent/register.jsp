<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common_top.jsp"%>
<script>
$(function(){
	$("#registerButton").click(function(){
		var json = '{"customerEmail":"' + $('#customerEmail').val() + '","customerNikeName":"' + $('#customerNikeName').val() + '","customerPassword":"' + $('#customerPassword').val() + '"}';  
		$.ajax({
		    type: "POST",
		    contentType : 'application/json',
		    url: "customerRegister.do",
		    data: json,
		    dataType: "json",
		    success: function(data){
		    },
		    error: function (msg) {
		        alert("抱歉，加载商品失败。");
		    }
	    });
	});
});
</script>
<div class="phone4s-panel">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">欢迎注册Phone4S帐号</h3>
		</div>
		<div class="panel-body">
			<div class="progress">
			  <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
			    30%
			  </div>
			</div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="customerEmail" class="col-sm-2 control-label">邮箱地址：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="customerEmail"
							placeholder="请输入您的邮箱，例如：phone4s@phone4s.com">
					</div>
				</div>
				<div class="form-group">
					<label for="customerNikeName" class="col-sm-2 control-label">显示昵称：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="customerNikeName"
							placeholder="昵称为显示在网站的用户名称">
					</div>
				</div>
				<div class="form-group">
					<label for="customerPassword" class="col-sm-2 control-label">设置密码：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="customerPassword"
							placeholder="密码长度8~16位，数字、字母、字符至少包含两种">
					</div>
				</div>
				<div class="form-group">
					<label for="customerConfirmPassword" class="col-sm-2 control-label">确认密码：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="customerConfirmPassword"
							placeholder="请再次输入您设置的密码">
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
						<p><a class="btn btn-primary" role="button" id="registerButton">同意注册</a></p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="common_bottom.jsp"%>