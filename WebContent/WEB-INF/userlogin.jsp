<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
				Welcome User
<table>	

<h2 color="red">${errormsg}</h2>

<form action="login" method="post">
<tr><td>emailid : <input type="text" name="emailid" required>
</td></tr>
<tr><td>
Password: <input type="text" name="password" required>
</td></tr>

<tr><td>
<input type="submit" value="submit">
</td></tr>

</form>

</table>
</center>
</body>
</html>