<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">  
		function matchpass(){  
				var firstpassword=document.f1.password.value;  
				var secondpassword=document.f1.password2.value;  
				  
		if(firstpassword==secondpassword)
		{  
			return true;  
		}  
		else{  
		alert("password must be same!");  
		return false;  
		}  
		}  
</script>
		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function()
	{
			$("#oldpassword").blur(function(){
				
			var data="oldpassword="+$("#oldpassword").val();
					$.ajax({
						url:'AdminCheckOldpwd',
						data:data,
						type:'post',
						success:function(result)
						{
							
							
							if(result.match(0))
								{
								 $("#printmsg").html("<font color='Red'>Password does not match</font>");
								 $("#btnSubmit").prop('disabled', true);
								}
							else if(result.match(1))
							{
								 $("#printmsg").hide();
								 $("#btnSubmit").prop('disabled', false);
							}
						}
						
					})
			});
			
		}
		
		);
</script>

</head>
<body>

<a href="./adminlogout">logout</a><br/>
<a href="./adminhome">back</a>
		<center>
	
		${passwordchanged}
		
		<form name="f1" action="./adminpasswordchanged" onsubmit="return matchpass()" method="post">
		 <table>	
			<tr id="oldpasswordId">
				<td>Old Password:  <input type="password" id="oldpassword" name="oldpassword" placeholder="Enter Old Password" required/>
					<div id="printmsg"></div>
				</td>
			</tr>
			 
			<tr id="newpassword">
				<td>New Password:<input type="password" name="password" id="newpassword" placeholder="Enter New Password" required/></td>
			</tr>  
			<tr>
				<td>Conform Password:<input type="password" name="password2"  placeholder="Conform Password" required/></td>
			</tr>
			
			
			<tr><td></td><td><input type="submit" name="submit" id="btnSubmit" value="ok"/></td></tr>
		  <button type="button" onClick="window.location.reload();">Refresh</button>
		  
		  </table>
		  	
		</form>		
	</center>

</body>
</html>  