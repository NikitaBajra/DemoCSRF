<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/css/loginCSS.css"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/loginCSS.css">
	
	<title>Insert title here</title>
</head>
<body>
	 <form action="${contextRoot}/login" method = "POST">
		  <div class="imgcontainer">
		    <img src="${pageContext.request.contextPath}/resources/bootstrap/img/img_avatar2.png" alt="Avatar" class="avatar">
		  </div>
		
		  <div class="container">
		    <label><b>Username</b></label>
		    <input type="text" placeholder="Enter Username" name="uname" required>
		
		    <label><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="psw" required>
		
		    <button type="submit">Login</button>
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		    
		    <input type="checkbox" checked="checked"> Remember me
		  </div>
		
		  <div class="container" style="background-color:#f1f1f1">
		    <button type="button" class="cancelbtn">Cancel</button>
		    <span class="psw">Forgot <a href="#">password?</a></span>
		  </div>
	  </form> 

	<%-- <h1 align="center">Login</h1>
	<form action="loginPage" method = "get">
		<table>
			<tr>
				<td><th>User Name : </th></tr><tr><input type = "text" name = "userName" placeholder = "User Name"></td>
			</tr>
			<tr>
				<th>Password : </th>
				<input type = "text" name = "password" placeholder = "Password">
			</tr>
			<tr>
				<th><input = "submit" name = "submit" value = "Save"></th>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</tr>
		</table>
	</form> --%>
	<%-- <c:url var="logoutUrl" value="/logout"/>
	<form action="${logoutUrl}" method="post">
	  <input type="submit" value="Log out" />
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form> --%>
</body>
</html>