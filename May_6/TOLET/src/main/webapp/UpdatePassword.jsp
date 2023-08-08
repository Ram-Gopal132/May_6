<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="menu.jsp" /></td>
		</tr>

		<tr>
			<td colspan="2" align="center" valign="middle" height="400px">


					<%
					
							String _receivedUid=request.getParameter("hid_uid");
							String _password=request.getParameter("txt_pass1");
							
							//out.println("Received Userid::"+_receivedUid);
							//out.println("<br>");
							//out.println("Received Password::"+_password);
							
							Connection cn=(Connection)application.getAttribute("CONN");
							
							PreparedStatement ps=cn.prepareStatement("update login set password=? where userid=?");
							ps.setString(1, _password);
							ps.setString(2, _receivedUid);
							
							int a=ps.executeUpdate();
							
							if(a>0)
								{
								
								%>
								
								<h3 align="center"><font face="consolas" color="red">Password Updated! <a href="index.jsp">Click Here to Login</a></font></h3>
								
								
								<%
								
								}
					
					
					%>

			</td>
		</tr>

	</table>


</body>
</html>