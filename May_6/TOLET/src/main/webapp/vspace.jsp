<%@page import="java.util.Vector"%>
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
			<br>
			<br>
			<br>
			
				<%
						Vector v=(Vector)session.getAttribute("cart");
				
						Connection cn=(Connection)application.getAttribute("CONN");
						
						 
				
				
				%>	
				
			<table cellpadding="5" cellspacing="0" border="0" width="95%">
					
					
					<tr bgcolor="green"><th colspan="6"><font color="white">VISITED PROPERTIES</font></th></tr>
					
						<%
						
								for(int i=0;i<v.size();i++)
									{
									
							PreparedStatement ps=cn.prepareStatement("select * from property where pid=?");
							ps.setInt(1, Integer.parseInt(""+v.get(i)));
							
							ResultSet  rs=ps.executeQuery();
							rs.next();
									
									
						%>
							<tr><td></td><td><img src="showPropertyImage.jsp?pid=<%=rs.getString(1)%>" width="100" height="100"></td><td><%=rs.getString(2)%> - <%=rs.getString(3)%></td><td><%=rs.getString(6)%></td><td><b><font color="red">Contact:</font></b> <%=rs.getString(9)%></td><td><a href="RemoveFromCart.jsp?idex=<%=i%>">Remove</a></td></tr>	
						
						<%
									}
						
						%>
						
			
			
			</table>						



			</td>
		</tr>

	</table>


</body>
</html>