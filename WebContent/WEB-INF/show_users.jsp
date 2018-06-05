<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bean.Registration" %>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<a href="./adminlogout">logout</a><br/>
<a href="./adminhome">back</a>
	
	
	<%
		ArrayList<Registration> al=(ArrayList)request.getAttribute("users_arraylist");
		if(al!=null)
		{
			%>
			<center>
			<h1>All Users</h1>
			${user_updated}
				<table border="3">
				<tr>			
					
					<td> Name</td>
					<td> Email Id</td>
					<td>Address </td>
					
					
				</tr>
				
				
						<%
						
							for(Registration l:al)
							{
								%>
									<tr>
										<td><%=l.getName()%>&nbsp;</td>
										<td><%=l.getEmailid()%>&nbsp;</td>
										<td><%=l.getAddress()%>&nbsp;</td>
										
									
										
									</tr>
								<%
							}
						%>
				</table>
				</center>				
			<%
		}
	%>
	
	
	
</body>
</html>