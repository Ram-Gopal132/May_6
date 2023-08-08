<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

<table cellpadding="0" cellspacing="0" border="0" width="100%">

	<tr><td colspan="2" align="center"><jsp:include page="banner.jsp" /></td></tr>	
	<tr><td colspan="2"><jsp:include page="menu.jsp" /></td></tr>	
	
	<tr><td colspan="2" align="center" valign="middle" height="600px">
	
	
	
	<%
	
		String _name=request.getParameter("txt_name");
		String _address=request.getParameter("ta_address");
		String _mobile=request.getParameter("txt_mobile");
		String _email=request.getParameter("txt_email");
		String _squestion=request.getParameter("cmb_quest");
		String _answer=request.getParameter("txt_answer");
		String _pass=request.getParameter("txt_pass1");
		String _utype="Normal";
		
		Connection cn=(Connection)application.getAttribute("CONN");
		
		CallableStatement csbt=cn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}");
		csbt.setString(1, _email);
		csbt.setString(2, _name);
		csbt.setString(3, _address);
		csbt.setString(4, _mobile);
		csbt.setString(5, _squestion);
		csbt.setString(6, _answer);
		csbt.setString(7, _pass);
		csbt.setString(8, _utype);
		
		csbt.execute();
	
	%>
	
	<hr>
			<h4><font color="red">Signup Successful!</font> <a href="index.jsp">Click Here</a> for Login! </h4>
	<hr>
	
	
	</td></tr>

</table>


</body>
</html>