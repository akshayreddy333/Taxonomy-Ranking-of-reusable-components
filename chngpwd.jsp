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


<body background="images/test.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:820px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Change Password</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 200px">



<form method="post" action="" name="" target="_top">
<table>
<%--<tr><td>username:</td><td><input type="text" name="login"></td></tr> --%>
<tr><td>old password:</td><td><input type="password" name="oldpassword"></td></tr>
<tr><td>new password:</td><td><input type="password" name="newpassword"></td></tr>

</table>

&nbsp;</td><td><input type="submit" value="change" formaction="chngpwd1.jsp">

<%! String act; %>
<% String type=(String)session.getAttribute("ut"); 
 if(type.equals("A"))
act="aoptions.jsp";
else if(type.equals("B"))
 act="uoptions.jsp";
%>
<input type="submit" value="Back" formaction="<%=act%>"/>

</form>
</body>
</html>
