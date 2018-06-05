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
Welcome To Spring MVC Hibernate
<table>	

<h2 color="red">${errormsg}</h2>

<form action="login" method="post">
<tr><td>Userid : <input type="text" name="id" required>
</td></tr>
<tr><td>
Password: <input type="text" name="password" required>
</td></tr>

<tr><td>
<input type="submit" value="submit">
</td></tr>

</form>

<tr><td> <a href="./registerpage"> Register </a></li></a> </td></tr>
<tr><td> <a href="./Userloginpage"> SignIn </a></li></a> </td></tr>

</table>
</center>

</body>
</html>