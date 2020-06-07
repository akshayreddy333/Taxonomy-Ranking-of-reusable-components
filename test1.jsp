<%@page import="java.sql.*"%>
<%!String tt,vcname,vrtype,vacount;%>
<%
tt=request.getParameter("editc");
int i=Integer.parseInt(tt);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
Statement stmt=con.createStatement();
ResultSet rs1=stmt.executeQuery("select * from attributes where ckey="+i);
rs1.next();
 vcname=rs1.getString(1);
vrtype=rs1.getString(2);
vacount=rs1.getString(3);
%>
value of i  
<%= i%>
<%=vcname%>
<%= vrtype%>
<%=vacount%>


