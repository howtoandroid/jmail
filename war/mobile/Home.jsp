<!doctype html>

<jsp:useBean id="userService" class="CheckLogin.UserServiceImpl"  />
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
						<li><a href="inbox.jsp" data-icon="mail">Inbox</a></li>
						<li><a href="buttons.jsp" data-icon="navigation">Enviados</a></li>
						<li><a href="listviews.html" data-icon="delete">Papelera</a></li>
						<li><a href="nav.html" data-icon="eye">SPAM</a></li>
					</ul>
				</div>
			</div>
			<div data-role="content" data-theme="a">

				<a id="newUser" href="" onclick="newUser();" data-role="button" data-icon="star">New User</a>
			</div>
		</div>
		
	<script>
	function newUser(){
		alert("diego");
		window.location='newUser.jsp';
	}
    
    </script>
		
		
		
	</body>
</html>