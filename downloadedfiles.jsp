<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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
  
  <script type="text/javascript">
  function dload()
  {
window.alert("ok");
  }
</script>
  
  
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
   String qry="select A.*,B.* from attributes A, ratinglater B where A.ccode=B.ccode and B.username='"+session.getAttribute("uname")+"'";
   
   
   %>

<form method="get" action="" name="" target="_top"> 
 
 <%
 
 %>
 Components:
<table align=CENTER>
<tr><th>component name</th><th>Return type</th><th>Number of arguments</th><th>programming language</th><th>operating system</th><th>Time Complexity</th><th>Space Complexity</th><th>Status</th><th>Rating</th><th>view file</th><th>Download file</th></tr>

<%Statement stmt=con.createStatement();
ResultSet re=stmt.executeQuery(qry);

 while(re.next())
 {
	 String status=re.getString("status");
	 String ccode=re.getString("ccode");
	 if(status.equals("rated"))
	 {
   %> 
  
   <tr>     
    <td> <%=re.getString("cname")%></td>
    <td> <%=re.getString("rtype")%></td>
    <td> <%=re.getString("acount")%></td>
    <td> <%=re.getString("plang")%></td>
    <td> <%=re.getString("os")%></td>
    <td> <%=re.getString("tcomp")%></td>
	<td> <%=re.getString("scomp")%></td>
	<td> <%=re.getString("status")%></td>
	<td> <%=re.getString("rating")%></td>
	
    <td> <a href="./sourcefiles/<%=re.getString(9)%>">file</a></td>
	    <td> <a href="./sourcefiles/<%=re.getString(9)%>" download> DOWNLOAD</a></td> 
	 <!--<td> <a href="http://localhost:8080/IRS/downloadfile.jsp?file=<%=re.getString(9)%>&ccode=<%=ccode%>&cname=<%=re.getString("cname")%>&type=2" > </a></td> -->
    
    </tr>
	


<%
  }
  else
  {
	  
%>

<tr>     
    <td> <%=re.getString("cname")%></td>
    <td> <%=re.getString("rtype")%></td>
    <td> <%=re.getString("acount")%></td>
    <td> <%=re.getString("plang")%></td>
    <td> <%=re.getString("os")%></td>
    <td> <%=re.getString("tcomp")%></td>
	<td> <%=re.getString("scomp")%></td>
	<td> <A href="rating.jsp?ccode=<%=ccode%>&cname=<%=re.getString("cname")%>&type=2">Not Rated</A></td>
	<td> <%=re.getString("rating")%></td>
	
    <td> <a href="./sourcefiles/<%=re.getString(9)%>">file</a></td>
	    <td> <a href="./sourcefiles/<%=re.getString(9)%>" download> DOWNLOAD</a></td> 
	   <!--<td> <a href="http://localhost:8080/IRS/downloadfile.jsp?file=<%=re.getString(9)%>&ccode=<%=ccode%>&cname=<%=re.getString("cname")%>&type=2" > DOWNLOAD</a></td>--> 
    
    </tr>


<%
  }
 }
%>
</table>  

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
