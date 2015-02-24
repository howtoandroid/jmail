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
				<h1>Registro</h1>
			</div>
			<div data-role="content" data-theme="a">
			<%
				String nombre = "";
				String email = "";
				String password = "";
				String error = "";
				String answer = "User was created.";
			
				if(request.getParameter("nombre") != null)
					nombre = request.getParameter("nombre");
				
				if(request.getParameter("email") != null)
					email = request.getParameter("email");
				
				if(request.getParameter("nombre") != null)
					password = request.getParameter("password");
				
				if(userService.existUser(email))
					error = "Email already exists.\n";
				else{
					userService.newUser(nombre, email, password);
				}
			%>

			<p>
				<%
				if(error != "")
				{
				%>
				<%=error%>
				<a id="error" href="" onclick="history.go(-1)" data-role="button" data-icon="star">Back</a>
				
				<%
				}else{%>
				<%=answer%>
				<a id="noError" href="" onclick="index();" data-role="button" data-icon="star">Menu</a>
				
				<%} %>
				</p>
				
				
			
			</div>
		</div>
		
			<script>
	function index(){
		window.location='Home.jsp'
	}
    
    </script>
	</body>
</html>