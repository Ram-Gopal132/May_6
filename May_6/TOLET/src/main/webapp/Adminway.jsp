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

<script lang="JavaScript" type="text/javascript">
		function  crossCheckPass()
			{
				if(document.getElementById("ps1").value != document.getElementById("ps2").value)
					{
					
						alert("Password Mismatch!");
						
						return false;
					}
				else
					{
					
						return true;
					}
			
			}

</script>
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

					<table cellpadding="5" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
						
							<tr bgcolor="green"><th ><font color="white">ADMIN FORMS</font></th></tr>
							
							<tr><td align="center"><a href="pentry.jsp">PROPERTY ENTRY FORM</a></td></tr>
							<tr><td align="center"><a href="propertydelconsider.jsp">PROPERTY ENTRY VIEW/DELETE FORM</a></td></tr>
							<tr><td align="center"><a href="">ANOTHER ADMIN SIGN UP FORM</a></td></tr>
							<tr><td align="center"><a href="">QUERY RESPONSE FORM</a></td></tr>
							
							<tr bgcolor="lightgreen"><td></td></tr>
					
					
					
					</table>


			</td>
		</tr>

	</table>


</body>
</html>