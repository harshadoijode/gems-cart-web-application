<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>admin login</title>
<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
html{
height:100%;

}
table{
border-radius:25px;
background-color:#999999;
}

body {
	background-image: linear-gradient(black,white,black);
}
-->
</style>

<%@ include file="hometabs.html" %>
</head>

<body>
<%@ include file="db.jsp" %>
<%@ page import="java.util.Date"%>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>


<p>&nbsp;</p>
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
Date date=new Date();

rst=stmt.executeQuery("select * from login where username='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
response.sendRedirect("viewstores.jsp");
//response.sendRedirect("adminMain.html");

	
	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>

<center>
 <table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="516" height="416"><div class="w3-content w3-section" style="max-width:500px"  > <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%" /> <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%" /> <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%" /> </div></td>
    <td width="659"><center>
 <div align="center">
<form id="form1" name="form1" method="post" action="">
  <table width="61%" height="225" border="0" align="center">
    <tr>
      <td width="116"><div align="right"><strong>Enter username </strong></div></td>
      <td width="169"><input name="username" type="text" id="username" /></td>
    </tr>
    <tr>
      <td><div align="right"><strong>enter password</strong></div></td>
      <td><input name="password" type="password" id="password" /></td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td><input type="submit" name="Submit" value="Login" /></td>
    </tr>
  </table>
  
</form>
</div>
</center></td>
   
  </tr>
</table>
</center>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

 
</body>
</html>
