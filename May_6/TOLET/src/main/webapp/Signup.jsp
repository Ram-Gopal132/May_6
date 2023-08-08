<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

<table cellpadding="0" cellspacing="0" border="0" width="100%">

	<tr><td colspan="2" align="center"><jsp:include page="banner.jsp" /></td></tr>	
	<tr><td colspan="2"><jsp:include page="menu.jsp" /></td></tr>	
	
	<tr><td colspan="2" align="center" valign="middle" height="600px">
	
	
	<%
			String[] squestions={"What is first school name?","What is your first book?","Your first movie?"};
	
	%>
	<form method="post" action="SignUpConfirm.jsp">
	<table cellpadding="5" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
	
			<tr bgcolor="green"><th colspan="4"><font face="consolas" color="white">SIGNUP HERE</font></th></tr>
			<tr>	<td width="15%"></td><td><font face="consolas">USER NAME</font></td><td><input type="text" name="txt_name" placeholder="USERNAME" required="required"></td><td width="15%"></td></tr>
			<tr>	<td ></td><td><font face="consolas">ADDRESS</font></td><td><textarea rows="5" cols="50" name="ta_address"></textarea></td><td width="15%"></td></tr>
			<tr>	<td ></td><td><font face="consolas">MOBILE</font></td><td><input type="text" name="txt_mobile" placeholder="MOBILE" required="required"></td><td width="15%"></td></tr>
			<tr>	<td ></td><td><font face="consolas">EMAIL</font></td><td><input type="text" name="txt_email" placeholder="EMAIL" required="required" onkeyup="crossCheck(this.value)"></td><td width="15%" id="info"></td></tr>
			<tr>	<td ></td><td><font face="consolas">SECURITY QUESTION</font></td><td>
			
						<select name="cmb_quest">
								<option value="" selected>-select security quest-</option>
								<%
									for(String _squest:squestions)
										{
										
										
								%>
								<option value="<%=_squest%>"><%=_squest%></option>
								
								<%
										}
								
								%>
						</select>
			
			
			</td><td width="25%"></td></tr>
			<tr>	<td ></td><td><font face="consolas">ANSWER</font></td><td><input type="text" name="txt_answer" placeholder="ANSWER" required="required"></td><td width="15%"></td></tr>
			<tr>	<td ></td><td><font face="consolas">PASSWORD</font></td><td><input type="password" name="txt_pass1" placeholder="PASSWORD" required="required"></td><td width="15%"></td></tr>
			<tr>	<td ></td><td><font face="consolas"> CONFIRM PASSWORD</font></td><td><input type="password" name="txt_pass2" placeholder="RE-PASSWORD" required="required"></td><td width="15%"></td></tr>
			
			<tr>	<td colspan="4" align="center"><input type="submit" value="SIGN UP CONFIRM"></td></tr>
			<tr bgcolor="green"><td colspan="4"></td></tr>
	
	</table>
	</form>
	
	</td></tr>

</table>


</body>
</html>