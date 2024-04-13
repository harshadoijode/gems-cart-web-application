<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
   background-color:white;
   border-radius:20px;
   color:#000099;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
 
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
</head>
<body>
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>

<br /><br />
<br />
<br /><br />
<br />
<center>
<form action="" method="post" />
 
	  
       <input name="Diamonds" type="submit" value="Diamonds" />
	   <input name="Ruby" type="submit" value="Ruby" />
	   <input name="Sapphire" type="submit" value="Sapphire" />
	   <input name="emerald" type="submit" value="emerald" />
	
      
	
  </div>
</form>
</center>



<br>
<% if(request.getParameter("Diamonds")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where category='Diamonds' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>"  width="300" height="300" style="width:300"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerLogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>

  <% } 
 
  %>
  
  
</div>
<% } %>



<% if(request.getParameter("Ruby")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where category='Ruby' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>"  width="300" height="300" style="width:300"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerLogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>

  <% } 
 
  %>
  
  
</div>
<% } %>


<% if(request.getParameter("Sapphire")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where category='Sapphire' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>"  width="300" height="300" style="width:300"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerLogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>

  <% } 
 
  %>
  
  
</div>
<% } %>


<% if(request.getParameter("emerald")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where category='emerald' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>"  width="300" height="300" style="width:300"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerLogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>

  <% } 
 
  %>
  
  
</div>
<% } %>









</body>
</html>

