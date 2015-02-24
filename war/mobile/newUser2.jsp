<!doctype html>

<jsp:useBean id="userService" class="CheckLogin.UserServiceImpl"  />
<html>
	<head>
		<%@include file="Header.jsp" %>
	</head>
	<body>
		<div data-role="page" data-theme="a">
			<div data-role="header" data-position="inline">
			<a href="#" onclick="history.go(-1)" class="ui-btn ui-icon-back ui-btn-icon-notext ui-corner-all"></a>
				<h1>Create a new account</h1>
			</div>
			<div data-role="content" data-theme="a">

			<p>Name</p>
			<input type="text" data-clear-btn="true" name="nombre" id="nombre" value="">
			<p>Email</p>
			<input type="text" data-clear-btn="true" name="email" id="email" value="">
			<p>Password</p>
			<input type="password" data-clear-btn="true" name="password" id="password" value="" autocomplete="off">
			
			<a id="newUser" href="" onclick="newUser();" data-role="button" data-icon="star">Register</a>

			</div>
		</div>
		
		<script>
			function newUser(){
				var nombre = document.getElementById("nombre").value;
				var email = document.getElementById("email").value;
				var password = document.getElementById("password").value;
				var cadena = "registro.jsp?nombre=" + nombre + "&email=" + email + "&password=" + password; 
				window.location = cadena;
			}
		</script>
	</body>
</html>