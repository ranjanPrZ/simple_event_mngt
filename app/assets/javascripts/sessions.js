$(document).ready(function(){
	$("#user_login").submit(function(){
		var email_field = $("#email").val();
		var pwd_field = $("#password").val();
		if(email_field.trim().length == 0){;
			$("#name_error").hide()
			$("#email_error").text("Enter email").show();
			return false;
		}else if(pwd_field.trim().length == 0){
			$("#name_error, #email_error").hide()
			$("#pwd_error").text("Enter password").show();
			return false;
		}
	})
})