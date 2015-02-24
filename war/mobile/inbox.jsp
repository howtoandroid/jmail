<!doctype html>

<jsp:useBean id="userService" class="CheckLogin.UserServiceImpl"  />
<jsp:useBean id="conectionsService" class="app.Conections" />
<html>
	<head>
		<%@include file="Header.jsp" %>
	</head>
	<body>
		<div data-role="page" data-theme="a">
			<div data-role="header" data-position="inline">
				<h1>JMail</h1>
				<div data-role="navbar">
					<ul>
						<li><a href="inbox.html" data-icon="mail">Inbox</a></li>
						<li><a href="buttons.html" data-icon="navigation">Enviados</a></li>
						<li><a href="listviews.html" data-icon="delete">Papelera</a></li>
						<li><a href="nav.html" data-icon="eye">SPAM</a></li>
					</ul>
				</div>
			</div>
			<%
			System.out.println(">>> Empieza getService()");
			
		//	conectionsService.getService();
			
			System.out.println(">>> Acaba getService()");
			%>
			
			<div data-role="content" data-theme="a">

				<a id="getService" href="" onclick="checkServie();" data-role="button" data-icon="star">Get Service</a>
			</div>
		</div>
		
	<script>
	function checkService(){
		window.location='newUser.jsp'
	}
    
    </script>
		
		
		
	</body>
</html>