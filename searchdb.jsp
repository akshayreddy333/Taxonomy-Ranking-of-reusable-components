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
</head>


<body background="images/images.jpg">
 
  <div style="text-align:CENTER">
  <h1>INFORMATION RETRIEVAL SYSTEM</h1>
  
  <div style="width: auto; max-width:2000px; background-color: #FFffFF; border: 2px solid #0361A8; border-radius:5px; margin: 50px auto auto;">
  <div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em;           font-weight:bold;">Database Overview</span></div>
&nbsp&nbsp&nbsp<div><%= new java.util.Date() %></div>
  <div style="background: ; padding: 100px">

<%! String act,qry; %>

<%Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");%>

<form method="get" action="" name="" target="_top"> 

 <input type="checkbox" name="col1" value='Component Name'>Component Name<br>
 <input type="checkbox" name="col2" value='Return Type'>Return Type<br>
 <input type="checkbox" name="col3" value='No. of Arguments'>No. of Arguments<br>
 <input type="checkbox" name="col4" value='Programming Language'>Programming Language<br>
 <input type="checkbox" name="col5" value='Operating System'>Operating System<br>
 <input type="checkbox" name="col6" value='Time Complexity'>Time Complexity<br>
 <input type="checkbox" name="col7" value='Space Complexity'>Space Complexity<br><br>
 
 <input type="text" name="val">
 <input type="submit" name="search" value="Search">
 
 <%
 if(request.getParameter("search")!=null)
 {
 String val=request.getParameter("val");
 String col1="",col2="",col3="",col4="",col5="",col6="",col7="";
 
 ArrayList col=new ArrayList();
 ArrayList value=new ArrayList();
 int count=0;
 if(request.getParameter("col1")!=null)
 {
	count++;
	col.add("cname");
 }
  
 
 if(request.getParameter("col2")!=null)
 {
	count++;
	col.add("rtype");
 }
  
  if(request.getParameter("col3")!=null)
 {
	count++;
	col.add("acount");
	
 }
  
  if(request.getParameter("col4")!=null)
 {
	count++;
	col.add("plang");
 }
  
  if(request.getParameter("col5")!=null)
 {
	count++;
	col.add("os");
 }
  
  if(request.getParameter("col6")!=null)
 {
	count++;
	col.add("tcomp");
 }
  
  if(request.getParameter("col7")!=null)
 {
	count++;
	col.add("scomp");
 }
  
 String s[]=val.split(",") ;
 if(count!=s.length)
 {
	 out.println("<h1> invalid number of values");
	 return;
 }

qry="select A.* from attributes A where " ;
 
qry="select A.*,ifnull(B.rank,0) rank from attributes A left join att_calculate B  on  A.ccode=B.ccode where "; 
 
 for(int i=0;i<col.size();i++)
 {
 //out.println("col="+col.get(i)+"  value="+s[i]);
if(i==col.size()-1)
	 qry+=" A."+col.get(i)+"='"+s[i]+"'";
 else
	 qry+=" A."+ col.get(i)+"='"+s[i]+"' and ";
 }
 qry+=" order by B.rank desc";
 
 
 /*out.println(qry);
 int x=1;
 if(x==1)
	 return; */
 %>
 Components:
<table align=CENTER>
<tr><th>component name</th><th>Return type</th><th>Number of arguments</th><th>programming language</th><th>operating system</th><th>Time Complexity</th><th>Space Complexity</th><th>file</th></th><th>download</th><th>rank</th></tr>

<%Statement stmt=con.createStatement();
ResultSet re=stmt.executeQuery(qry);
int c=0;
 while(re.next())
 {
	 c++;
	 String ccode=re.getString(1);
   %> 
  
   <tr>     
    <td> <%=re.getString(2)%></td>
    <td> <%=re.getString(3)%></td>
    <td> <%=re.getString(4)%></td>
    <td> <%=re.getString(5)%></td>
    <td> <%=re.getString(6)%></td>
    <td> <%=re.getString(7)%></td>
	<td> <%=re.getString(8)%></td>
    <td> <a href="./sourcefiles/<%=re.getString(9)%>">file</a></td>
	    <!--<td> <a href="http://localhost:8080/IRS/downloadfile.jsp?file=/sourcefiles/<%=re.getString(9)%>&ccode=<%=ccode%>"> DOWNLOAD</a></td>--> 
		<td> <a href="http://localhost:8080/IRS/downloadfile.jsp?file=<%=re.getString(9)%>&ccode=<%=ccode%>&cname=<%=re.getString("cname")%>&type=2"> DOWNLOAD</a></td>
    <td><%=re.getFloat("rank")%></td>
    </tr>

<%
  }
  
  if(c==0)
	  out.println("<h1>No matching results</h1>");
%>

</table>  
<%
 }
%>


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
