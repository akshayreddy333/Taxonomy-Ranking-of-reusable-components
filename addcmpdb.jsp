
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>

<%String cname=request.getParameter("cname");
String rtype=request.getParameter("rtype");
String acount=request.getParameter("acount");
String plang=request.getParameter("plang");
String os=request.getParameter("os");
String tcomp=request.getParameter("tcomp");
String scomp=request.getParameter("scomp");
String cfile=request.getParameter("cfile");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");

Statement stmt=con.createStatement();

UUID uuid = UUID.randomUUID();
String randomUUIDString = uuid.toString();

String query ="insert into attributes(ccode, cname,rtype,acount,plang,os,tcomp,scomp,cfile) values('"+randomUUIDString+"','"+cname+"','"+rtype+"',"+(Integer.parseInt(acount))+",'"+plang+"','"+os+"','"+tcomp+"','"+scomp+"','"+cfile+"')";
System.out.println("Query1 = " + query);

stmt.executeUpdate(query);
System.out.println("Query = " + query);
response.sendRedirect("aoptions.jsp");
%>