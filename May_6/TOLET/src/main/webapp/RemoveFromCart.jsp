<%@page import="java.util.Vector"%>
<%

int i=Integer.parseInt(request.getParameter("idex"));
Vector v=(Vector)session.getAttribute("cart");

v.remove(i);

response.sendRedirect("vspace.jsp");


%>

