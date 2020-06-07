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


<body background="images/abc.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:1080px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Database Overview</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 100px">


<%Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");%>

<form method="post" action="" name="" target="_top"> 
<!--
<input type="submit" value="Back" formaction="<%=act%>">  -->
<br>
<br>

Components:
<table align=CENTER>
<tr><th>component name</th><th>Return type</th><th>Number of arguments</th><th>programming language</th><th>operating system</th><th>Time Complexity</th><th>Space Complexity</th><th>file</th></tr>

<%Statement stmt=con.createStatement();
ResultSet re=stmt.executeQuery("select cname,rtype,acount,plang,os,tcomp,scomp,cfile from attributes");

 while(re.next())
 {
   %> 
  
   <tr>     
    <td> <%=re.getString(1)%></td>
    <td> <%=re.getString(2)%></td>
    <td> <%=re.getString(3)%></td>
    <td> <%=re.getString(4)%></td>
    <td> <%=re.getString(5)%></td>
    <td> <%=re.getString(6)%></td>
    <td> <%=re.getString(7)%></td>
    <td> <a href="./sourcefiles/<%=re.getString(8)%>">file</a></td>
    
    </tr>


<%
  }
%>

</table>  

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
