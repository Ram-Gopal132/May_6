<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

<table cellpadding="0" cellspacing="0" border="0" width="100%">

	<tr><td colspan="2" align="center"><jsp:include page="banner.jsp" /></td></tr>	
	<tr><td colspan="2"><jsp:include page="menu.jsp" /></td></tr>	
	
	<tr><td colspan="2" align="center">
	
	<br>
	<form method="post" action="ValidateLogin.jsp">
	<table cellpadding="10" cellspacing="0" border="0" width="90%" bgcolor="lightyellow">
	
		<tr><td bgcolor="blue"><font color="white">LOGIN HERE</font></td><td><input type="text" placeholder="ENTER USER ID" name="txt_uid"/></td><td><input type="password" placeholder="PASSWORD" name="txt_pass"></td><td><input type="submit" value="Login"></td><td><a href="Signup.jsp">SignUp Here!</a> | <a href="Forget.jsp">Forget Password</a></td></tr>
	</table>
	</form>
	<br>
	
	</td></tr>
	
	<tr><td colspan="2" align="center">
	
	<jsp:include page="slidingimages.jsp"/>
	
	</td></tr>

</table>


</body>
</html>