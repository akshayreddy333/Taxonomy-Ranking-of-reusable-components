entered loginverify
<%@page import="java.sql.*"%>
<%String name=request.getParameter("login");
String pwd=request.getParameter("password");
boolean flag=true;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");


Statement stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from users");
while(rs.next())
{
  String uname=rs.getString("name");
  String pswrd=rs.getString("password");
  String type=rs.getString("utype");
 if(name.equals("admin") && pswrd.equals("admin")&&type.equals("A"))
 {
         String username= "admin";
         session.setAttribute("uname",username);

         response.sendRedirect("aoptions.jsp");
         flag=false;
  }
  else if( uname.equals(name) &&  pswrd.equals(pwd)&& type.equals("B"))
    {
    response.sendRedirect("uoptions.jsp");
    flag=false;
    } 
   
} 
if(flag)
   {
      
     response.sendRedirect("index.jsp"); 
    }




%>
