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
			<td colspan="2" align="center"  height="100px">
					<%
					
							Connection cn=(Connection)application.getAttribute("CONN");
					
							PreparedStatement ps=cn.prepareStatement("select * from property");
							
							ResultSet rs=ps.executeQuery();
					
					%>
			<br>
			<br>
			
			
			<table cellpadding="5" cellspacing="0" border="0" width="80%">
			
				<tr bgcolor="green"><th colspan="7"><font color="white">PROPERTY RECORDS</font></th></tr>
				<%
						while(rs.next())
							{
							
					%>
					
					<tr><td><%=rs.getString(1)%></td><td><font color="red"><%=rs.getString(2)%>-<%=rs.getString(3)%></font></td><td><font color="brown"><%=rs.getString(6)%></font></td><td><font color="brown">Rent:<%=rs.getString(8)%></font></td><td><font color="brown">Brokerage:<%=rs.getString(7)%></font></td><td><a href="delproperty.jsp?pid=<%=rs.getString(1)%>">Delete</a></td><td><a href="considerproperty.jsp?pid=<%=rs.getString(1)%>">Move to consider</a></td></tr>
					
					<%		
							
							}
				
				%>
			
			</table>
			

			</td>
		</tr>

	</table>


</body>
</html>