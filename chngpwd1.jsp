<%@page import="java.sql.*"%>
<%String name=request.getParameter("login");
String opwd=request.getParameter("oldpassword");
String npwd=request.getParameter("newpassword");
boolean flag=true;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");


Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select password from users where name='"+session.getAttribute("uname")+"'");
if(rs.next())
{
	if((rs.getString(1)).equals(opwd))
	{
		String query="update users set password='"+npwd+"' where password='"+opwd+"' and name='"+session.getAttribute("uname")+"'";
		stmt.executeUpdate(query);
	}
}

 
  
%>
<%--
<%! String act; %>
<% String type=(String)session.getAttribute("ut"); 
 if(type.equals("A"))
act="aoptions.jsp";
else if(type.equals("B"))
 act="uoptions.jsp";
--%>
<%
response.sendRedirect("chngpwd.jsp");
%>
