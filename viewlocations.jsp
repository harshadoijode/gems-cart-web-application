<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/bg1.jpg);
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}

-->
</style>
</head>

<body>
<%@ include file="adminmenu.html" %>
  <%@ include file="db.jsp" %> 
  <br />
<br />
<br />
<br /><br />
<br />

<div align="center">
<p>&nbsp;</p>
<p align="center">

  <span class="style1">Location Details </span></p>
  <% 
  
  rst=stmt.executeQuery("select * from shops");
  while(rst.next()){
  
   %>
<table width="auto" border="0" align="center" style="border-radius:20px;">
  <tr bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td width="auto"><p align="center"><strong><img src="uploads/<%= rst.getString(7) %>" width="400" height="300" /></p>
	 <p align="center">Location name</strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Address:</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>Category:</strong><%= rst.getString(3) %></p>
      <p align="center"><strong>phone</strong>:<%= rst.getString(4) %></p>
      <p align="center"><strong>email</strong>:<%= rst.getString(5) %></p>
    <p align="center"><strong>Description</strong>:<%= rst.getString(6) %></p> 
	 <center><form action="" method="get">
   <input name="s1" type="hidden" value="<%= rst.getString(1) %>" />
   <input name="Remove" type="submit" value="Remove" />
  </form></center> 
	   </td>
    <td width="691"><div align="center"><%= rst.getString(8) %></div></td>
	
  </tr>
  </table>
  <br />


  
  <% } %>


 </div> 



<%
if(request.getParameter("Remove")!=null){
try{
int x=stmt.executeUpdate("delete from shops where locationname='"+request.getParameter("s1")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewlocations.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
