<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <%@ include file="hometabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Art Gallery</title>
<style type="text/css">
<!--

td,th {
	color: white;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
	
}
.style1 {
	color: #CCCCCC;
	font-weight: bold;
}

-->
</style>
</head>

<body>
<%@ include file="db.jsp" %><br />
<br />
<br />
<br /><br />
<br />


<div align="center" class="style1">New Dealer  </div>
<center>
<form id="form1" name="form1" method="post" action="">
  <table style="background:#666666; color:white; border-radius:20px;" width="auto" border="0" align="center">
    <tr >
      <td width="285">Dealer Name </td>
      <td width="212"><input name="s1" type="text"  /></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="s2" cols="auto" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>Mobile no. </td>
      <td><input name="s3" type="text"   required /></td>
    </tr>
     <tr>
      <td>Password </td>
      <td><input name="s4" type="text"  required /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value=" register" /></td>
    </tr>
  </table>
</form>
</div>

</center>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");

try{
int x=stmt.executeUpdate("insert into dealer(name,address,phone,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
if(x!=0){
%>
<script>

alert("dealer Added  Successfull");
window.open("dealerlogin.jsp","_self");
</script>
<%
}

}catch(Exception e){
%>
<script>

alert("Ecepiton");

</script>
<%
}
}
 %>


</body>
</html>
