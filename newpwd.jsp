<%@page import="java.sql.*"%>



<html>
<head>
<title> Change Password</title>
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
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Change Password</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 200px">

<%Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");%>

oldpassword:<input type="password" name="opwd"><br><br>
newpassword:<input type="password" name="npwd"><br>

&nbsp;<input type="submit" value="save" formaction="newpwd1.jsp"/>



</body>
</html>


