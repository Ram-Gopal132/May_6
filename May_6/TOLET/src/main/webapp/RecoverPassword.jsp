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


				<%
				
						String uid=request.getParameter("txt_uid");
						String answer=request.getParameter("txt_answer");
						
						Connection cn=(Connection)application.getAttribute("CONN");
						
						PreparedStatement ps=cn.prepareStatement("select * from user_info where email=? and security_ans=?");
						ps.setString(1, uid);
						ps.setString(2, answer);
						
						ResultSet rs=ps.executeQuery();
						if(rs.next())
							{
							
							
							%>
							
							
							
									<form method="post" action="UpdatePassword.jsp" onsubmit="return crossCheckPass()">
									
									<input type="hidden" name="hid_uid" value="<%=uid%>">
									
									<table cellpadding="5" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
										
											<tr bgcolor="green"><th colspan="3"><font color="white">UPDATE PASSWORD</font></th></tr>
											<tr><td width="25%"></td><td align="center"><input type="password" name="txt_pass1" id="ps1" placeholder="ENTER NEW PASSWORD"></td><td width="25%"></td></tr>
											<tr><td width="25%"></td><td align="center"><input type="password" name="txt_pass2" id="ps2" placeholder="CONFIRM NEW PASSWORD"></td><td width="25%"></td></tr>
											<tr><td colspan="3" align="center"><input type="submit" value="Update Password"></td></tr>
											
											<tr bgcolor="lightgreen"><td colspan="3" align="center"></td></tr>
											
									
									</table>
									
									
									
									</form>
							
							
							
							
							<%
							}
						else
						{
							
							%>
							
							<h3 align="center"><font color="red">Wrong Answer! Try Again!</font></h3>
							
							
							<%
							
						}
				%>



			</td>
		</tr>

	</table>


</body>
</html>