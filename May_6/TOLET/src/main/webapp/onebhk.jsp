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
			<td colspan="2" align="center" valign="middle" height="700px">
			
			
			<table cellpadding="5" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
				
					<tr bgcolor="green"><th colspan="3"><font color="white">ONE BHK FLATS IN YOUR LOCATION</font></th></tr>
			
					<tr><td width="15%"></td><td align="center"><input type="text" placeholder="ENTER THE ADDRESS" name="txt_add" onkeyup="populateOneBHK(this.value)"></td><td width="15%"></td></tr>
			
					<tr><td colspan="3" id="info"></td></tr>
					<tr bgcolor="green"><td colspan="3"></td></tr>
			</table>
			
			

			</td>
		</tr>

	</table>


</body>
</html>