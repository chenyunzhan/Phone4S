<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common_top.jsp" %>
<script>
$(function(){
	$("#verifyEmailButton").click(function(){
		var json = {emailValidateCode: $('#emailValidateCode').val() ,customerEmail: $('#customerEmail').val() };  
		$.ajax({
		    type: "POST",
		    url: "customerVerifyEmail.do",
		    data: json,
		    dataType: "json",
		    success: function(data){
		    	if(data.success == true){
			    	location.href = "register_success.jsp";
		    	}else if(data.success == false){
		    		//alert(data.msg);
		    		$("#verifyEmailMessageDiv").text(data.msg);
		    		$('#verifyEmailMessageModal').modal('show');
		    	}
		    },
		    error: function (data) {
		    	alert(data.msg);
		    }
	    });
	});
});
</script>
<div class="phone4s-panel-verify-email">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">Phone4S帐号邮箱验证</h3>
		</div>
		<div class="panel-body">
			<div class="progress">
			  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
			    60%
			  </div>
			</div>
			<form class="form-horizontal verify-email-form" role="form">
				<h5>我们向您邮箱<%=request.getParameter("customerEmail")%>里发送了验证码，请查收，并填入下面的框里，进行验证。</h5>
				<h5>注意：如果收信箱没有验证码，有可能因为邮箱误认为为垃圾邮件，请在垃圾邮件里查看。</h5>
				<input type="hidden" id="customerEmail" value="<%=request.getParameter("customerEmail")%>">
				<br><br>
				<div class="form-group">
					<label for="emailValidateCode" class="col-sm-2 control-label">邮箱验证码：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="emailValidateCode"
							placeholder="请输入您收到的验证码">
					</div>
				</div>
				<br><br>
				<div class="form-group">
					<div class="col-sm-offset-5 col-sm-10">
						<p><a class="btn btn-primary" role="button" id="verifyEmailButton">点击验证</a></p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<div id="verifyEmailMessageModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" id="mySmallModalLabel">温馨提示</h4>
        </div>
        <div class="modal-body" id="verifyEmailMessageDiv">
          ...
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<%@include file="common_bottom.jsp" %>