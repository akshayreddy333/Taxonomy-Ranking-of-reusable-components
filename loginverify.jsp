
<%@page import="java.sql.*"%>
<%String name=request.getParameter("login");
String pwd=request.getParameter("password");
boolean flag=true;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");


Statement stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from users where name='"+name+"' and password='"+pwd+"'");
while(rs.next())
{
   String type=rs.getString("utype");
   String uname=rs.getString("name");
  String pswrd=rs.getString("password");


  session.setAttribute("uname",name);
  session.setAttribute("password",pwd);
  session.setAttribute("ut",type);




 if(uname.equals("admin") && pswrd.equals(pwd)&&type.equals("A"))
 {
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
     /*out.println("Invalid password <a href='index.jsp'>try again</a>");*/ 
      response.sendRedirect("tt.jsp");
    }



%>
