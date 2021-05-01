$(document).ready(function(){
	$("form").submit(function(){
		var name_field = $("#user_name").val();
		var email_field = $("#user_email").val();
		var pwd_field = $("#user_password").val();
		var pwd_cnfrm_field = $("#user_password_confirmation").val();
		if(name_field.trim().length == 0){
			$("#name_error").text("Enter name").show();
			return false;
		}else if(email_field.trim().length == 0){
			$("#email_error").text("Enter email").show();
			return false;
		}else if(pwd_field.trim().length == 0){
			$("#pwd_error").text("Enter password").show();
			return false;
		}else if(pwd_cnfrm_field.trim().length == 0){
			$("#cmf_pwd_error").text("Enter Confirmation password").show();
			return false;
		}
	})
})