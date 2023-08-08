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

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="menu.jsp" /></td>   
		</tr>

		<tr>
			<td colspan="2" align="center" valign="middle" height="200px">


				<form method="post" action="RecoverPassword.jsp">

					<table cellpadding="5" cellspacing="0" border="0" width="70%"
						bgcolor="lightyellow">

						<tr bgcolor="green">
							<th colspan="4"><font color="white">PASSWORD RECOVERY</font></th>
						</tr>

						<tr>
							<td width="25%"></td>
							<td colspan="2" align="center"><input type="text"
								name="txt_uid" id="userid" placeholder="ENTER USER ID"></td>
							<td width="25%"><a href="javascript: getQuest()">Get Question</a></td>
						</tr>

						<tr>
							<td colspan="4" align="center" id="info"></td>
						</tr>
						<tr bgcolor="lightgreen">
							<td colspan="4"></td>
						</tr>




					</table>


				</form>



			</td>
		</tr>

	</table>


</body>
</html>