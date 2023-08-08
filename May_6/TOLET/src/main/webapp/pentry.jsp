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
			<td colspan="2" align="center" valign="middle" height="700px">
			
			<%
				Connection cn=(Connection)application.getAttribute("CONN");
			
				PreparedStatement  ps=cn.prepareStatement("select distinct category_name from category_subcat");
				ResultSet rs=ps.executeQuery();
			
			%>

				<form method="post" action="UploadServlet" enctype="multipart/form-data">
				
					<table cellpadding="5" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
					
							<tr bgcolor="green">	<th colspan="4"><font color="white">PROPERTY ENTRY FORM</font></th></tr>
					
							<tr><td width="25%"></td><td colspan="2">
							<select name="cmb_category" onchange="populateSub(this.value)">
									<option value="" selected>-select category-</option>
									
									<%
										while(rs.next())
											{
											
									%>
									
									<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
									<%
											
											}
									
									%>
							
							
							</select>
							
							</td><td width="25%"></td></tr>
							
							
							<tr><td width="25%"></td><td colspan="2">
							<select name="cmb_subcategory" id="info">
									<option value="" selected>-select sub category-</option>
							
							
							</select>
							
							</td><td width="25%"></td></tr>
							
							<tr><td width="25%"></td><td colspan="2">
						
							<textarea placeholder="Add Description" name="ta_description" rows="10" cols="50"></textarea>
							
						
							</td><td width="25%"></td></tr>
							
							<tr><td width="25%"></td><td colspan="2">
							
								<label class="blink"><font color="red">Property Image</font></label>
							
								<input placeholder="Enter Image" type="file"  name="file_upload"/>
							
							</td><td width="25%"></td></tr>
							
							<tr><td width="25%"></td><td colspan="2">
						
							<textarea placeholder="Address of Property" name="ta_address" rows="5" cols="50"></textarea>
							
						
							</td><td width="25%"></td></tr>
							
							
							<tr><td width="25%"></td><td colspan="2">
						
							<input type="text" name="txt_brokerage" placeholder="Enter Brokerage" required="required">
							
						
							</td><td width="25%"></td></tr>
							
							<tr><td width="25%"></td><td colspan="2">
						
							<input type="text" name="txt_rent" placeholder="Enter Rent" required="required">
							
						
							</td><td width="25%"></td></tr>
							
							<tr><td width="25%"></td><td colspan="2">
						
							<input type="text" name="txt_contact" placeholder="Contact No" required="required">
							
						
							</td><td width="25%"></td></tr>
							
							
							<tr><td colspan="4" align="center"><input type="submit" value="Upload Record"></td></tr>
							
							
					</table>
				
				
				
				</form>

			</td>
		</tr>

	</table>


</body>
</html>