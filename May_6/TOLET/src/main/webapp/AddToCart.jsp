<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Vector"%>
<%

		int pid=Integer.parseInt(request.getParameter("pid"));

		Vector mycart=(Vector)session.getAttribute("cart");
		
		
		if(mycart.contains(pid))
			{
					out.println("Already Added!");
			
			}
		else
			{
				out.println("Property added::"+pid);
				mycart.add(pid);
			
			}


%>
