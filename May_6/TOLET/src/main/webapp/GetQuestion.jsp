<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% 
		String uid=request.getParameter("uid");

		Connection cn=(Connection)application.getAttribute("CONN");
		
		
		PreparedStatement ps=cn.prepareStatement("select security_quest from user_info where email=?");
		ps.setString(1, uid);
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next())
			{
			
			%>
			
			<font face="verdana" color="red"><%=rs.getString(1) %></font>
			<br>
			
			<input type="text" name="txt_answer" placeholder="ANSWER ME">
			<br>
			
			<input type="submit" value="Recover Password" >
			
			
			
			
			<%
			
			}
		else
		{
			
			
			%>
					<font color="red">User Does not Exist!</font>
			
			<%

		}

%>

