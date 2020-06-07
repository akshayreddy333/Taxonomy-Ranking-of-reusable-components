<%@page import="java.sql.*"%>

<%String name=request.getParameter("uname");
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");


Statement stmt=con.createStatement();

String query ="insert into users values('B','"+name+"','"+pwd+"')";
stmt.executeUpdate(query);
response.sendRedirect("index.jsp");
%>