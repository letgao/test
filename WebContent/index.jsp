<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/index.css">
</head>
<body>
	<div class="container">
		<h1>欢迎来到德莱联盟</h1>
		<div class="block">
			<span>用户名：</span> <input type="text" v-model="username">
		</div>
		<div class="block">
			<span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span> <input type="password"
				v-model="password">
		</div>
		<div class="block refund">
			<a href="#">忘记密码？</a> <a href="#">注册账户</a>
		</div>
		<div class="btn" @click="submitForm">登&nbsp;&nbsp;陆</div>
	</div>
	<script src="https://unpkg.com/vue@2.4.4/dist/vue.js"></script>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		var app = new Vue({
			el : '.container',
			data : {
				username : '',
				password : ''
			},
			methods : {
				submitForm : function() {
					var username = this.username, password = this.password;
					$.ajax({
						type : "post",
						url : "Login",
						data : {
							username : username,
							password : password
						},
						success : function(data) {
							console.log(data)
							if (data == 1) {
								alert("欢迎来到德莱联盟")
								window.location.href = "product.html"
							}
						}
					})
				}
			}
		})
	</script>
</body>
</html>