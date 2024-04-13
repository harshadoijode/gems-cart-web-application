<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
.style3 {color: #FFFFFF}
-->
</style></head>

<body>
<%@ include file="adminmenu.html" %>
<br />
<br />
<br />
<br />
<center>
  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select * from  customer   ");

  
						
  %>
  Customer List</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style1">Email</div></td>
    <td><div align="center" class="style1">password</div></td>
    <td><div align="center" class="style1">Firstname</div></td>
    <td><div align="center" class="style1">Lastname</div></td>
	 <td><div align="center" class="style1">Country</div></td>
	  <td><div align="center" class="style1">ZIP</div></td>
	   <td><div align="center" class="style1">State</div></td>
	   <td><div align="center" class="style1">Address</div></td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="grey">
    <td><div align="center" class="style3"><%= rst.getString(1) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(2) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(3) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(4) %></div></td>
	<td><div align="center" class="style3"><%= rst.getString(5) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(6) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(7) %></div></td>
    <td><div align="center" class="style3"><%= rst.getString(8) %></div></td>
  </tr>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
</center>
</body>
</html>
