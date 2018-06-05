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
<table>
<h1>Registration page</h1>	

<h1>${done}</h1>
<h1>${errormsg}</h1>

<form action="register" method="post">
<tr><td>Name : <input type="text" name="name">
</td></tr>
<tr><td>
Emailid: <input type="text" name="emailid">
</td></tr>

<tr><td>
password: <input type="text" name="password">
</td></tr>

<tr><td>
Address: <input type="text" name="address">
</td></tr>

<tr><td>
<input type="submit" value="submit">
</td></tr>

</form>
</table>
</center>

</body>
</html>