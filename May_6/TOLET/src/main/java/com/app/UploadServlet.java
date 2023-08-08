package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

@MultipartConfig(maxFileSize = 10000000L)
public class UploadServlet extends HttpServlet{
	
	Connection cn;
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		
		cn=(Connection)config.getServletContext().getAttribute("CONN");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				
				String _category=req.getParameter("cmb_category");
				String _scategory=req.getParameter("cmb_subcategory");
				String _description=req.getParameter("ta_description");
				Part _image_in_part=req.getPart("file_upload");
				InputStream _image_in_bits=_image_in_part.getInputStream();
				String _address=req.getParameter("ta_address");
				double _brokerage=Double.parseDouble(req.getParameter("txt_brokerage"));
				
				double _rent=Double.parseDouble(req.getParameter("txt_rent"));
				String _contact=req.getParameter("txt_contact");
				
				PreparedStatement ps=cn.prepareStatement("insert into property(category,scategory,description,image,address,brokerage,rent,contact) values(?,?,?,?,?,?,?,?)");
				ps.setString(1, _category);
				ps.setString(2, _scategory);
				ps.setString(3, _description);
				ps.setBlob(4, _image_in_bits);
				ps.setString(5, _address);
				ps.setDouble(6, _brokerage);
				ps.setDouble(7, _rent);
				ps.setString(8, _contact);
				
				int a=ps.executeUpdate();
				
				if(a>0)
					{
						PrintWriter out=resp.getWriter();
						
						resp.setContentType("text/html");
						
						RequestDispatcher rd=req.getRequestDispatcher("/model.jsp");
						rd.include(req, resp);
						
						out.println("<h3 align=center><font color=red>Record Inserted!</font></h3>");
						
						
					
					}
				
			} catch (Exception e) {
				// TODO: handle exception
				JOptionPane.showMessageDialog(null, e.getMessage());
			}
	}

}
