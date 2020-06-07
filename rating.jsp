<%@page import="java.sql.*"%>
<html>
<head>
<title> View database </title>
<style type="text/css">
  h1{font-family:Times new roman;
      font-size:50;
      fontweight:bold;
      color:#ffffff;
      background-color:#20B2AA;
      border:thin groove;
      border-radius:10px;
      border: 2px solid #20B2AA
      }
  table,th,td{ border:1px solid black}
  </style>
</head>


<body background="images/images.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:1080px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Database Overview</span></div>
&nbsp&nbsp&nbsp<div><%= new java.util.Date() %></div>
  <div style="background: ; padding: 100px">

<%! String act; %>
<%Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
   Statement st=con.createStatement();
String ccode=request.getParameter("ccode");
String cname=request.getParameter("cname");
//out.println("cname ="+cname+" ccode="+ccode);

String uname=(String)session.getAttribute("uname");


   
   %>

   <center>
<form method="post" action="addrating_code.jsp" name="" target="_top"> 
<input type="hidden" name="ccode" value="<%=ccode%>">
<input type="hidden" name="type" value="<%=request.getParameter("type")%>">
<table>

<tr><td> Component Name </td><td><input type="text" name="cname" value="<%=cname%>" readonly></td></tr>
<tr><td> Rating </td><td>


<select name="rating">
<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
</select>



</td></tr>
<tr><td colspan="2" align="center"> <input type="submit" name="submit" value="Add"></td></tr>
</table>
</form>
<br><br>

<form method="post" action="searchdb.jsp" name="" target="_top"> 
<input type="submit" name="submit" value="SKIP">
</form>


</center>

<table>

</table>

</center>






<% String type=(String)session.getAttribute("ut"); 
 if(type.equals("A"))
act="aoptions.jsp";
else if(type.equals("B"))
 act="uoptions.jsp";
%>


</form>
</body>
</html>
