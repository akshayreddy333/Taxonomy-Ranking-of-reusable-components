<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
   Statement st=con.createStatement();
String ccode=request.getParameter("ccode");
String cname=request.getParameter("cname");
String rating=request.getParameter("rating");
out.println("cname ="+cname+" ccode="+ccode);
String uname=(String)session.getAttribute("uname");


String qry="select * from att_calculate where ccode='"+ccode+"'";
ResultSet rs=st.executeQuery(qry);
double rat=0.0;
int dcount=0;
if(rs.next())
{
	
	rat=rs.getDouble("rating");
	dcount=rs.getInt("dwncnt");
}

double userrat=Double.parseDouble(rating);

double avg=(rat+userrat)/2.0;

double rank=(0.7*dcount)+0.3*avg;

String qry1="update att_calculate set rank="+rank+",rating="+rating +" where ccode='"+ccode+"'";
int n=st.executeUpdate(qry1);

String qry3="update ratinglater set status='rated',rating="+rating+" where ccode='"+ccode+"' and username='"+session.getAttribute("uname")+"'";
int m=st.executeUpdate(qry3);
String str=request.getParameter("type");
out.println(str);
int x=Integer.parseInt(str);
if(x==1)
out.println("<script language='javascript'>window.location='searchdb.jsp'</script>"); 
else
	out.println("<script language='javascript'>window.location='downloadedfiles.jsp'</script>");  



   
   %>

