<html>
<head>
<title>Add component </title>
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
        
   table{font-family:times,serif;
         font-size:15;
         color:191970
 
     }
  
  </style>
</head>



<%! String vcname,vrtype,vacount,vplang,vos,vtcomp,vscomp,vcfile;   
      int fit=0; %>
<%@page import="java.sql.*"%>
<%
String vcname=request.getParameter("cname");
String vrtype=request.getParameter("rtype");
String vacount=request.getParameter("acount");
vplang=request.getParameter("plang");
vos=request.getParameter("os");
vtcomp=request.getParameter("tcomp");
vscomp=request.getParameter("scomp");
vcfile=request.getParameter("cfile");
boolean flag=true;
%>

<body background="images/test.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:720px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Enter the attributes for the component to be retrieved</span></div>
&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 100px">

<form method="post" action="" name="" target="_top">
<table>
<tr><td>component name:</td><td><input type="text" name="cname" value="<%=vcname%>" class="field left" readonly></td></tr>
<tr><td>Return type:</td><td><input type="text" name="rtype" value="<%=vrtype%>" class="field left" readonly></td></tr>
<tr><td>Number of Arguments:</td><td><input type="text" name="acount" value="<%=vacount%>" class="field left" readonly></td></tr>

<tr><td>programming language:</td><td><input type="text" name="plang" value="<%=vplang%>" class="field left" readonly>



<tr><td>operating system:</td>
<td><input type="text" name="os" value="<%=vos%>" class="field left" readonly>
  </td></tr>

<tr><td>Time complexity:</td><td><input type="text" name="tcomp" value="<%=vtcomp%>" class="field left" readonly></td></tr>
<tr><td>Space complexity:</td><td><input type="text" name="scomp" value="<%=vscomp%>" class="field left" readonly></td></tr>
<tr><td>file location:</td><td><input type="text" name="cfile" value="<%=vcfile%>" class="field left" readonly/>
<%-- Value:</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="fit" value="<%=fit%>" class="field left" readonly></td>
--%>

<tr><td>&nbsp;</td><td><input type="submit" value="save" formaction="addcmpdb.jsp"></td>
<tr><td>&nbsp;</td><td><input type="submit" value="Back" formaction="addcmp.jsp"></td></tr>


</table>
</form>
</body>
</html>
