<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

int pid=Integer.parseInt(request.getParameter("pid"));

Connection cn=(Connection)application.getAttribute("CONN");

PreparedStatement ps=cn.prepareStatement("select image from property where pid=?");
ps.setInt(1, pid);

ResultSet rs_image=ps.executeQuery();


rs_image.next();

Blob _image_in_blob=rs_image.getBlob(1);


byte[] _image_in_bits=(byte[])_image_in_blob.getBytes(1, (int)_image_in_blob.length());

OutputStream ous=response.getOutputStream();
response.setContentType("image/jpg");

ous.write(_image_in_bits);
ous.flush();
ous.close();

%>