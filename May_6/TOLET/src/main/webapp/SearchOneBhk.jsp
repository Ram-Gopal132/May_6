
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
		<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
</head>
<body>
<table cellpadding="5" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
<% 
		String address=request.getParameter("address");
		Connection cn=(Connection)application.getAttribute("CONN");
		
		PreparedStatement ps=cn.prepareStatement("select * from property where category=? and address like '%"+address+"%'");
		ps.setString(1, "One BHK");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
			{
			
			%>
			
			
			<tr><td width="25%"><b><font face="consolas" color="blue">Property Type</font></b></td><td><b><font face="consolas" color="black"><%=rs.getString(3) %></font></b></td><td><a href="showPropertyImage.jsp?pid=<%=rs.getString(1)%>"><img src="showPropertyImage.jsp?pid=<%=rs.getString(1)%>" width="150" height="150"></a></td><td width="25%"></td></tr>
			
			<tr><td><b><font face="consolas" color="blue">Description</font></b></td><td colspan="3"><font face="verdana"><%=rs.getString(4) %></font></td></tr>
			<tr ><td><b><font face="consolas" color="blue">Address</font></b></td><td colspan="3"><font face="verdana"><%=rs.getString(6) %></font></td></tr>
			<tr><td><b><font face="consolas" color="blue">Brokerage</font></b></td><td><%=rs.getString(7) %></td><td><b><font face="consolas" color="blue">Rent</font></b></td><td><%=rs.getString(8) %></td></tr>
			<tr><td colspan="4"><b><font face="consolas" color="blue">Contact:</font></b> <%=rs.getString(9) %></td></tr>
			<tr bgcolor="blue"><td colspan="4" align="center"><a href="javascript: addCart('<%=rs.getString(1)%>')"><font color="white">Add to Visiting Spaces</font></a></td></tr>
			<%
			
			}
		

%>
</table>
</body>

</html>