

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<option value="" selected>-select sub category-</option>
<%

	String _category=request.getParameter("category");

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select sub_category from category_subcat where category_name=?");
	ps.setString(1, _category);
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
		{
		%>
		
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%
		
		}

%>
