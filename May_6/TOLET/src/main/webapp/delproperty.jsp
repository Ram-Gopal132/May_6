<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String id1=request.getParameter("pid");
int id=Integer.parseInt(id1);
Connection con=(Connection)application.getAttribute("CONN");
PreparedStatement ps1=con.prepareStatement("delete from property where pid=?");
ps1.setInt(1,id);
int a=ps1.executeUpdate();
if(a>0)
response.sendRedirect("propertydelconsider.jsp");

%>
</body>
</html>