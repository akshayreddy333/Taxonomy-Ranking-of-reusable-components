<%@page import="java.sql.*"%>

<%String opswd=request.getParameter("opwd");
String npswd=request.getParameter("npwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");


Statement stmt=con.createStatement();

String query ="update users set password='"+npswd+"' where password='"+opswd+"' ";
stmt.executeUpdate(query);
//out.println("****"+query);
//response.sendRedirect("login1.jsp");
%>