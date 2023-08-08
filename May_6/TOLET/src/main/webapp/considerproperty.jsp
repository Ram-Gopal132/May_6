<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String id1=request.getParameter("pid");
int id=Integer.parseInt(id1);
Connection con=(Connection)application.getAttribute("CONN");


PreparedStatement ps=con.prepareStatement("insert into consideration_property select * from property where pid=?");
ps.setInt(1, id);

int a=ps.executeUpdate();

if(a>0)
	{
		PreparedStatement p1=con.prepareStatement("delete from property where pid=?");
		p1.setInt(1, id);
		int b=p1.executeUpdate();
		
		if(b>0)
			{
			
				response.sendRedirect("propertydelconsider.jsp");
			}
	
	}


%>