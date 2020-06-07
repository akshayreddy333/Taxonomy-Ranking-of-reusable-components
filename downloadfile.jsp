<!--contents of download.jsp-->
<%@ page import="java.util.*,java.io.*"%>
<%@page import="java.sql.*"%>
<!--Assumes that file name is in the request objects query Parameter -->
<html>
<body>
<%
	//read the file name.

	int x=Integer.parseInt(request.getParameter("type"));
	
	String filename=request.getParameter("file");  //get the filename to download
	String ccode=request.getParameter("ccode");
	String cname=request.getParameter("cname");
	
	
	//String filename=request.getParameter("file"); 
    // out.println(filename);
try{
	File f = new File ( "D:\\installs\\apache-tomcat-7.0.65\\webapps\\IRS\\sourcefiles\\"+filename);
	//set the content type(can be excel/word/powerpoint etc..)
	response.setContentType("application/octet-stream");  // contenttype to download file
        response.setHeader("Content-Disposition","attachment;filename="+filename);  //setting the response header that it contains file 
	//get the file name
	//String name = f.getName().substring(f.getName().lastIndexOf("\\") + 1,f.getName().length());
	//OPen an input stream to the file and post the file contents thru the 
	//servlet output stream to the client m/c
	
		FileInputStream in = new FileInputStream(f);  // opens the file for reading
		ServletOutputStream outs = response.getOutputStream(); // outs  object writes into download file
				
		int bit = 256;
		int i = 0;
		try {
			while ((bit) >= 0) {
				bit = in.read();
				outs.write(bit);
			}
			//System.out.println("" +bit);
		} catch (IOException ioe) {
			ioe.printStackTrace(System.out);
		}
//		System.out.println( "\n" + i + " bytes sent.");
//		System.out.println( "\n" + f.length() + " bytes sent.");
		outs.flush(); //clears outs buffer
		outs.close();
		in.close();	
}
catch(Exception e)
{
	out.println("Error :"+e);
}
	
	
	
	
		//download file code here
		%>

		<%
		
		Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/components","root","Welcome1");
   Statement st=con.createStatement();
   
   
   String q="select * from ratinglater where username='"+session.getAttribute("uname")+"' and ccode='"+ccode+"'";
   ResultSet rs1=st.executeQuery(q);
   if(rs1.next())
   {
	   
	   if(x==1)
			out.println("<script language='javascript'>window.location='searchdb.jsp'</script>"); 
		else
			out.println("<script language='javascript'>window.location='downloadedfiles.jsp'</script>"); 
   
	   return;
   }
   
   
   
   String qry="select * from att_calculate where ccode='"+ccode+"'";
   
   ResultSet rs=st.executeQuery(qry);
   if(rs.next())  //record does not exist
   {
	   String qry2="update att_calculate set dwncnt=dwncnt+1 where ccode='"+ccode+"'";
	   int n=st.executeUpdate(qry2);
   }
   else  //record exist
   {
	String qry1="insert into att_calculate values('"+ccode+"',1,0,0)";
	int n=st.executeUpdate(qry1);
   }
   
   String qry2="insert into ratinglater values('"+session.getAttribute("uname")+"','"+ccode+"','"+cname+"','not rated',0.0)";
	int m=st.executeUpdate(qry2);
  	//out.println("<script language='javascript'>window.location='rating.jsp?ccode="+ccode+"&cname="+cname+"&type=1'</script>"); 
%>

</body>
</html>