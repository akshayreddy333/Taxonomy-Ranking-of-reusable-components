<%@page import="java.sql.*"%>
<%String name=request.getParameter("login");
String pwd=request.getParameter("password");
//out.println("name is "+name);
//out.println("password is"+pwd);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
out.println("connected    "+con.getClass());

Statement stmt=con.createStatement();

String query ="insert into users values('"+name+"','"+pwd+"')";
//out.println("*******   "+query);
stmt.executeUpdate(query);
%>
<%=request.getParameter("login")%>