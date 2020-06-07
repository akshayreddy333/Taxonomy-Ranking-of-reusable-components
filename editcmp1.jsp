<%@page import="java.sql.*"%>
<html>
<head>
<title>Edit component </title>
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

<%! String vcname,vrtype,vacount,vplang,vos,vtcomp,vscomp,vcfile,ccode;%>
<%
try
{
	ccode=request.getParameter("editc");
	System.out.println("editc = " + ccode);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
Statement stmt=con.createStatement();
ResultSet rs1=stmt.executeQuery("select * from attributes where ccode='"+ccode+"'");
rs1.next();

vcname=rs1.getString("cname");
vrtype=rs1.getString("rtype");
vacount=rs1.getString("acount");
vplang=rs1.getString("plang");
vos=rs1.getString("os");
vtcomp=rs1.getString("tcomp");
vscomp=rs1.getString("scomp");
vcfile=rs1.getString("cfile");
}
catch(Exception e) { }

%>

<body background="images/images.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:1080px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Enter the attributes for the component to be retrieved</span></div>&nbsp&nbsp&nbsp<div></div>
  <div style="background: ; padding: 200px">

<form method="post" action="" name="" target="_top">
<table>
<tr><td></td><td><input type="hidden" name="editc" value="<%=ccode%>" class="field left"></td></tr>
<tr><td>component name:</td><td><input type="text" name="cname" value="<%=vcname%>" class="field left"></td></tr>
<tr><td>Return type:</td><td><input type="text" name="rtype" value="<%=vrtype%>" class="field left" ></td></tr>
<tr><td>Number of Arguments:</td><td><input type="text" name="acount" value="<%=vacount%>" class="field left" ></td></tr>
<tr><td>programming language:</td><td><input type="text" name="plang" value="<%=vplang%>" class="field left" >
<tr><td>operating system:</td><td><input type="text" name="os" value="<%=vos%>" class="field left" >  </td></tr>
<tr><td>Time complexity:</td><td><input type="text" name="tcomp" value="<%=vtcomp%>" class="field left" ></td></tr>
<tr><td>Space complexity:</td><td><input type="text" name="scomp" value="<%=vscomp%>" class="field left" ></td></tr>
<tr><td>file location:</td><td><input type="text" name="cfile" value="<%=vcfile%>" class="field left" />
<tr><td>&nbsp;<input type="submit" value="Update Component" formaction="editcmpdb.jsp" ></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Back" formaction="editcmp.jsp"></td></tr>

</table>
</form>
</body>
</html>